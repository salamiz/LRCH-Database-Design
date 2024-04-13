SELECT
    Patient.PatientID AS "PATIENT-NO",
    Patient.Name AS "PATIENT-NAME",
    Patient.Location AS "LOC",
    FinancialTransaction.TransactionType AS "FIN. SOURCE",
    CostCentre.CentreID AS "COSTCENTRE",
    Item.ItemCode AS "ITEMCODE",
    Item.Description AS "DESC",
    Item.Charge AS "CHARGE",
    SUM(FinancialTransaction.Amount) AS "TOTAL"
FROM
    FinancialTransaction
JOIN Patient ON FinancialTransaction.PatientID = Patient.PatientID
JOIN Patient_Treatment ON Patient.PatientID = Patient_Treatment.PatientID
JOIN Treatment ON Patient_Treatment.TreatmentID = Treatment.TreatmentID
JOIN Item ON Treatment.ItemID = Item.ItemID
JOIN Item_CostCentre ON Item.ItemID = Item_CostCentre.ItemID
JOIN CostCentre ON Item_CostCentre.CentreID = CostCentre.CentreID
WHERE
    FinancialTransaction.Date = '2023-04-10'
GROUP BY
    Patient.PatientID, Patient.Name, Patient.Location, FinancialTransaction.TransactionType,
    CostCentre.CentreID, Item.ItemCode, Item.Description, Item.Charge
ORDER BY
    Patient.PatientID;
