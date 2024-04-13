SELECT 
    Room.RoomType,
    COUNT(Room.RoomID) - COUNT(Patient.PatientID) AS "Empty Beds"
FROM 
    Room
LEFT JOIN Patient ON Room.RoomID = Patient.Location AND (Patient.DischargeDate IS NULL OR Patient.DischargeDate > CAST(GETDATE() AS DATE))
GROUP BY 
    Room.RoomType;
