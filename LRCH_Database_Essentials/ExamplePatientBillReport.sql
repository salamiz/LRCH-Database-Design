SELECT
    Patient.PatientID AS "PATIENT NO",
    Patient.Name AS "PATIENT NAME",
    Patient.Address AS "PATIENT ADDRESS",
    Patient.AdmissionDate AS "DATE ADMITTED",
    Patient.DischargeDate AS "DISCHARGE DATE",
    CostCentre.CostCentreName AS "COSTCENTRE NAME",
    FinancialTransaction.Date AS "DATE CHARGED",
    Item.ItemCode AS "ITEMCODE",
    Item.Description AS "DESCRIPTION",
    Item.Charge AS "CHARGE",
    (SELECT SUM(Amount) FROM FinancialTransaction WHERE FinancialTransaction.PatientID = Patient.PatientID AND FinancialTransaction.Date = '2023-01-05') AS "TOTAL CHARGES",
    (SELECT SUM(Amount) FROM FinancialTransaction WHERE FinancialTransaction.PatientID = Patient.PatientID AND FinancialTransaction.Date = '2023-01-05') - (SELECT SUM(Item.Charge) FROM Item JOIN Treatment ON Item.ItemID = Treatment.ItemID JOIN Patient_Treatment ON Treatment.TreatmentID = Patient_Treatment.TreatmentID WHERE Patient_Treatment.PatientID = Patient.PatientID AND FinancialTransaction.Date = '2023-01-05') AS "BALANCE DUE"
FROM
    Patient
JOIN Patient_Treatment ON Patient.PatientID = Patient_Treatment.PatientID
JOIN Treatment ON Patient_Treatment.TreatmentID = Treatment.TreatmentID
JOIN Item ON Treatment.ItemID = Item.ItemID
JOIN Item_CostCentre ON Item.ItemID = Item_CostCentre.ItemID
JOIN CostCentre ON Item_CostCentre.CentreID = CostCentre.CentreID
JOIN FinancialTransaction ON Patient.PatientID = FinancialTransaction.PatientID
WHERE
    Patient.PatientID = 1001 AND
    FinancialTransaction.Date = '2023-01-05'
ORDER BY
    CostCentre.CostCentreName, FinancialTransaction.Date;
