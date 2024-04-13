SELECT
    Physician.PhysicianID AS [PHYSICIAN_NO],
    CONVERT(date, GETDATE()) AS [REPORT_DATE],
    Physician.Name AS [PHYSICIAN_NAME],
    Patient.PatientID AS [PATIENT_NO],
    Patient.Name AS [PATIENT_NAME],
    Patient.Location,
    Patient.AdmissionDate AS [DATE_ADMITTED],
	Patient.DischargeDate AS [DATE_DISCHARGED]
FROM
    Physician
INNER JOIN
    Patient_Physician ON Physician.PhysicianID = Patient_Physician.PhysicianID
INNER JOIN
    Patient ON Patient_Physician.PatientID = Patient.PatientID
WHERE
    Physician.PhysicianID = '2001'
    AND Patient.AdmissionDate BETWEEN '2023-01-01' AND '2023-01-01'
ORDER BY
    Patient.AdmissionDate;