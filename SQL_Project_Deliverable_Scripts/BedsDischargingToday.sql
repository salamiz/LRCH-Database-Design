SELECT 
    COUNT(Patient.PatientID) AS "Beds Discharging Patients Today"
FROM 
    Patient
WHERE 
    Patient.DischargeDate = CAST(GETDATE() AS DATE);
