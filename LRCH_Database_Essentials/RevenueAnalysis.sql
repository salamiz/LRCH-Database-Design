SELECT
    CostCentre.CentreID AS "COSTCENTRE",
    CostCentre.CostCentreName AS "NAME",
    COUNT(FinancialTransaction.TransactionID) AS "NO-OFTRANS",
    SUM(FinancialTransaction.Amount) AS "TOTAL CHARGES",
    SUM(CASE WHEN FinancialTransaction.TransactionType = 'Assure' THEN FinancialTransaction.Amount ELSE 0 END) AS "ASSURE",
    SUM(CASE WHEN FinancialTransaction.TransactionType = 'ESI' THEN FinancialTransaction.Amount ELSE 0 END) AS "ESI",
    SUM(CASE WHEN FinancialTransaction.TransactionType = 'Self Pay' THEN FinancialTransaction.Amount ELSE 0 END) AS "SELF PAY",
    SUM(CASE WHEN FinancialTransaction.TransactionType NOT IN ('Assure', 'ESI', 'Self Pay') THEN FinancialTransaction.Amount ELSE 0 END) AS "OTHER"
FROM
    FinancialTransaction
JOIN Patient ON FinancialTransaction.PatientID = Patient.PatientID
JOIN Patient_Treatment ON Patient.PatientID = Patient_Treatment.PatientID
JOIN Treatment ON Patient_Treatment.TreatmentID = Treatment.TreatmentID
JOIN Item ON Treatment.ItemID = Item.ItemID
JOIN Item_CostCentre ON Item.ItemID = Item_CostCentre.ItemID
JOIN CostCentre ON Item_CostCentre.CentreID = CostCentre.CentreID
WHERE
    FinancialTransaction.Date BETWEEN '2023-04-09' AND '2023-04-16' -- Date range for the specific week
GROUP BY
    CostCentre.CentreID, CostCentre.CostCentreName
ORDER BY
    CostCentre.CentreID;
