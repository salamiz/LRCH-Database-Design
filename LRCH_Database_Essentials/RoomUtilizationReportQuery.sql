SELECT
    Room.RoomID AS [LOCATION],
    Room.RoomType AS [TYPE],
    Patient.PatientID AS [PATIENTNO],
    Patient.Name AS [PATIENTNAME],
    Patient.AdmissionDate AS [DATEADMITTED]
FROM
    Room
LEFT JOIN
    Patient ON Room.RoomID = Patient.Location
WHERE
    Patient.AdmissionDate <= '2023-12-06' AND (Patient.DischargeDate IS NULL OR Patient.DischargeDate > '2023-12-06')
ORDER BY
    Room.RoomID;