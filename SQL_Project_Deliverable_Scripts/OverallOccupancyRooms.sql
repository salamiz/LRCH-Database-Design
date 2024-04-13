SELECT 
    COUNT(DISTINCT Patient.Location) AS "Occupied Rooms"
FROM 
    Patient
WHERE 
    Patient.DischargeDate IS NULL OR Patient.DischargeDate > CAST(GETDATE() AS DATE);
