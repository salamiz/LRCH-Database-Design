SELECT 
    Room.RoomType,
    COUNT(Patient.PatientID) AS "Occupied Beds"
FROM 
    Room
JOIN Patient ON Room.RoomID = Patient.Location
WHERE 
    Patient.DischargeDate IS NULL OR Patient.DischargeDate > CAST(GETDATE() AS DATE)
GROUP BY 
    Room.RoomType;
