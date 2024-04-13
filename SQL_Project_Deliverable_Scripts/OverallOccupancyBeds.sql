SELECT 
    COUNT(Patient.PatientID) AS "Occupied Beds"
FROM 
    Patient
WHERE 
    Patient.DischargeDate IS NULL OR Patient.DischargeDate > CAST(GETDATE() AS DATE);
