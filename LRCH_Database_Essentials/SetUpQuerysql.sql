/*
Group 5

*/

-- Drop Tables
DROP TABLE IF EXISTS Patient_Treatment;
DROP TABLE IF EXISTS Patient_Physician;
DROP TABLE IF EXISTS FinancialTransaction;
DROP TABLE IF EXISTS Treatment;
DROP TABLE IF EXISTS Physician;
DROP TABLE IF EXISTS Patient;
DROP TABLE IF EXISTS Room;
DROP TABLE IF EXISTS Item_CostCentre;
DROP TABLE IF EXISTS Item;
DROP TABLE IF EXISTS CostCentre;

-- Then proceed to create the tables and insert data as before
-- ...

-- The rest of your script remains the same

--Create tables

-- Cost Centre Table
CREATE TABLE CostCentre (
    CentreID INTEGER PRIMARY KEY ,
    CostCentreName VARCHAR(150),
    Budget DECIMAL
);

-- Room Table
CREATE TABLE Room (
    RoomID INTEGER PRIMARY KEY,
    RoomType VARCHAR(50)
);

-- Patient Table
CREATE TABLE Patient (
    PatientID INTEGER PRIMARY KEY,
    Name VARCHAR(50) NOT NULL,
    Address VARCHAR(250) NOT NULL,
    Phone VARCHAR(50) NOT NULL,
    Sex CHAR(1) NOT NULL,
    HealthCardNumber VARCHAR(50) NOT NULL,
    Location INT NOT NULL,
    FinancialStatus VARCHAR(50) NOT NULL,
    AdmissionDate DATE NOT NULL,
    DischargeDate DATE
);

-- Physician Table
CREATE TABLE Physician (
    PhysicianID INTEGER PRIMARY KEY,
    Name VARCHAR(50),
    Telephone VARCHAR(50),
    Specialty VARCHAR(50)
);

-- Treatment Table
CREATE TABLE Treatment (
    TreatmentID INTEGER PRIMARY KEY,
    TreatmentName VARCHAR(50),
    Description VARCHAR(150)
);

-- Financial Transaction Table
CREATE TABLE FinancialTransaction (
    TransactionID INTEGER PRIMARY KEY,
    PatientID INTEGER,
    Date DATE,
    Amount DECIMAL,
    TransactionType VARCHAR(50),
    FOREIGN KEY (PatientID) REFERENCES Patient(PatientID)
);

-- Patient-Physician Association Table
CREATE TABLE Patient_Physician (
    PatientID INTEGER,
    PhysicianID INTEGER,
    FOREIGN KEY (PatientID) REFERENCES Patient(PatientID),
    FOREIGN KEY (PhysicianID) REFERENCES Physician(PhysicianID)
);

-- Patient-Treatment Association Table
CREATE TABLE Patient_Treatment (
    PatientID INTEGER,
    TreatmentID INTEGER,
    FOREIGN KEY (PatientID) REFERENCES Patient(PatientID),
    FOREIGN KEY (TreatmentID) REFERENCES Treatment(TreatmentID)
);



-- Insert Statements

-- insert statements for CostCentre table
INSERT INTO CostCentre (CentreID, CostCentreName, Budget) VALUES
(11, 'Urology', 90000),
(12, 'Ophthalmology', 80000),
(13, 'Pulmonology', 95000),
(14, 'Endocrinology', 110000),
(15, 'Hematology', 100000),
(16, 'Nephrology', 105000),
(17, 'Rheumatology', 85000),
(18, 'Otolaryngology', 120000),
(19, 'Infectious Diseases', 90000),
(20, 'Allergy and Immunology', 95000),
(21, 'Emergency Medicine', 110000),
(22, 'Anesthesiology', 100000),
(23, 'Pathology', 95000),
(24, 'Cardiothoracic Surgery', 120000),
(25, 'Plastic Surgery', 80000),
(26, 'Neonatology', 90000),
(27, 'Geriatrics', 85000),
(28, 'Sports Medicine', 110000),
(29, 'Pain Management', 100000),
(30, 'Sleep Medicine', 95000);


-- Insert statements for Room table
INSERT INTO Room (RoomID, RoomType) VALUES
(101, 'Single'),
(102, 'Double'),
(103, 'ICU'),
(104, 'Surgery'),
(105, 'Pediatrics'),
(106, 'Maternity'),
(107, 'Neonatal'),
(108, 'Radiology'),
(109, 'Psychiatric Ward'),
(110, 'Endoscopy'),
(111, 'Laboratory'),
(112, 'Observation'),
(113, 'Oncology'),
(114, 'Orthopedics'),
(115, 'Cardiology'),
(116, 'Emergency'),
(117, 'Urology'),
(118, 'Dermatology'),
(119, 'Intensive Care'),
(120, 'Physical Therapy');


-- Insert statements for Patient table
INSERT INTO Patient (PatientID, Name, Address, Phone, Sex, HealthCardNumber, Location, FinancialStatus, AdmissionDate, DischargeDate) VALUES
(1001, 'John Doe', '123 Main St', '555-1234', 'M', 'HC123456', 101, 'Paid', '2023-01-01', '2023-01-10'),
(1002, 'Jane Smith', '456 Oak St', '555-5678', 'F', 'HC789012', 102, 'Unpaid', '2023-02-15', NULL),
(1003, 'Robert Johnson', '789 Pine St', '555-4321', 'M', 'HC654321', 103, 'Unpaid', '2023-03-10', NULL),
(1004, 'Emily Davis', '101 Cedar St', '555-8765', 'F', 'HC987654', 104, 'Paid', '2023-04-05', '2023-04-20'),
(1005, 'Michael Brown', '222 Elm St', '555-1111', 'M', 'HC222333', 105, 'Paid', '2023-05-12', '2023-05-25'),
(1006, 'Sarah Johnson', '333 Maple St', '555-9999', 'F', 'HC444555', 106, 'Unpaid', '2023-06-20', NULL),
(1007, 'William Garcia', '444 Oak St', '555-7777', 'M', 'HC666777', 107, 'Unpaid', '2023-07-08', NULL),
(1008, 'Sophia Martinez', '555 Pine St', '555-3333', 'F', 'HC888999', 108, 'Paid', '2023-08-14', '2023-08-28'),
(1009, 'James Wilson', '666 Cedar St', '555-2222', 'M', 'HC000111', 109, 'Paid', '2023-09-30', '2023-10-15'),
(1010, 'Olivia Lopez', '777 Elm St', '555-4444', 'F', 'HC222000', 110, 'Unpaid', '2023-10-25', NULL),
(1011, 'Ethan Lee', '888 Maple St', '555-5555', 'M', 'HC555777', 111, 'Unpaid', '2023-11-12', NULL),
(1012, 'Ava Hernandez', '999 Oak St', '555-8888', 'F', 'HC777999', 112, 'Paid', '2023-12-03', '2023-12-18'),
(1013, 'Noah Smith', '123 Pine St', '555-6666', 'M', 'HC123000', 113, 'Paid', '2024-01-07', '2024-01-20'),
(1014, 'Isabella Brown', '456 Cedar St', '555-9999', 'F', 'HC456111', 114, 'Unpaid', '2024-02-14', NULL),
(1015, 'Liam Garcia', '789 Elm St', '555-3333', 'M', 'HC789222', 115, 'Unpaid', '2024-03-20', NULL),
(1016, 'Mia Johnson', '101 Maple St', '555-2222', 'F', 'HC101333', 116, 'Paid', '2024-04-05', '2024-04-18'),
(1017, 'Benjamin Martinez', '222 Oak St', '555-4444', 'M', 'HC222444', 117, 'Paid', '2024-05-10', '2024-05-24'),
(1018, 'Emma Wilson', '333 Pine St', '555-7777', 'F', 'HC333555', 118, 'Unpaid', '2024-06-15', NULL),
(1019, 'Alexander Lee', '444 Cedar St', '555-8888', 'M', 'HC444666', 119, 'Unpaid', '2024-07-20', NULL),
(1020, 'Charlotte Lopez', '555 Elm St', '555-1111', 'F', 'HC555777', 120, 'Paid', '2024-08-25', '2024-09-05'),
(1021, 'Liam Hernandez', '666 Maple St', '555-3333', 'M', 'HC666888', 121, 'Paid', '2024-10-10', '2024-10-25'),
(1022, 'Amelia Smith', '777 Oak St', '555-4444', 'F', 'HC777999', 122, 'Unpaid', '2024-11-15', NULL),
(1023, 'Jackson Brown', '888 Pine St', '555-5555', 'M', 'HC888000', 123, 'Unpaid', '2024-12-20', NULL),
(1024, 'Olivia Johnson', '999 Cedar St', '555-6666', 'F', 'HC999111', 124, 'Paid', '2025-01-05', '2025-01-20'),
(1025, 'Noah Davis', '101 Elm St', '555-7777', 'M', 'HC101222', 125, 'Paid', '2025-02-10', '2025-02-25'),
(1026, 'Sophia Wilson', '222 Maple St', '555-8888', 'F', 'HC222333', 126, 'Unpaid', '2025-03-15', NULL),
(1027, 'Logan Garcia', '333 Oak St', '555-1111', 'M', 'HC333444', 127, 'Unpaid', '2025-04-20', NULL),
(1028, 'Ava Martinez', '444 Pine St', '555-2222', 'F', 'HC444555', 128, 'Paid', '2025-05-25', '2025-06-05'),
(1029, 'Lucas Lee', '555 Cedar St', '555-3333', 'M', 'HC555666', 129, 'Paid', '2025-06-15', '2025-06-30'),
(1030, 'Isabella Lopez', '666 Elm St', '555-4444', 'F', 'HC666777', 130, 'Unpaid', '2025-07-10', NULL),
(1031, 'Carter Johnson', '777 Maple St', '555-5555', 'M', 'HC777888', 131, 'Unpaid', '2025-08-15', NULL),
(1032, 'Emma Brown', '888 Oak St', '555-6666', 'F', 'HC888999', 132, 'Paid', '2025-09-20', '2025-10-05'),
(1033, 'Sebastian Smith', '999 Pine St', '555-7777', 'M', 'HC999000', 133, 'Paid', '2025-10-15', '2025-10-28'),
(1034, 'Avery Davis', '101 Cedar St', '555-8888', 'F', 'HC101111', 134, 'Unpaid', '2025-11-05', NULL),
(1035, 'Elijah Wilson', '222 Elm St', '555-9999', 'M', 'HC222222', 135, 'Unpaid', '2025-12-10', NULL),
(1036, 'Mia Garcia', '333 Maple St', '555-1111', 'F', 'HC333333', 136, 'Paid', '2026-01-15', '2026-01-30'),
(1037, 'Grayson Martinez', '444 Oak St', '555-2222', 'M', 'HC444444', 137, 'Paid', '2026-02-20', '2026-03-05'),
(1038, 'Luna Lee', '555 Pine St', '555-3333', 'F', 'HC555555', 138, 'Unpaid', '2026-03-15', NULL),
(1039, 'Jackson Lopez', '666 Cedar St', '555-4444', 'M', 'HC666666', 139, 'Unpaid', '2026-04-20', NULL),
(1040, 'Aria Johnson', '777 Elm St', '555-5555', 'F', 'HC777777', 140, 'Paid', '2026-05-25', '2026-06-05');



-- Insert statements for Physician table
INSERT INTO Physician (PhysicianID, Name, Telephone, Specialty) VALUES
(2001, 'Dr. Smith', '555-1234', 'Cardiologist'),
(2002, 'Dr. Johnson', '555-5678', 'Orthopedic Surgeon'),
(2003, 'Dr. Davis', '555-4321', 'Oncologist'),
(2004, 'Dr. Williams', '555-8765', 'Radiologist'),
(2005, 'Dr. Martinez', '555-1111', 'Dermatologist'),
(2006, 'Dr. Wilson', '555-9999', 'Psychiatrist'),
(2007, 'Dr. Brown', '555-7777', 'Gastroenterologist'),
(2008, 'Dr. Jones', '555-8888', 'Neurologist'),
(2009, 'Dr. Taylor', '555-6666', 'Urologist'),
(2010, 'Dr. Garcia', '555-5555', 'Ophthalmologist'),
(2011, 'Dr. Hernandez', '555-2222', 'Endocrinologist'),
(2012, 'Dr. Lee', '555-3333', 'Hematologist'),
(2013, 'Dr. Lopez', '555-4444', 'Pulmonologist'),
(2014, 'Dr. Davis', '555-5555', 'Nephrologist'),
(2015, 'Dr. Thomas', '555-6666', 'Rheumatologist'),
(2016, 'Dr. White', '555-7777', 'Otolaryngologist'),
(2017, 'Dr. Anderson', '555-8888', 'Infectious Disease Specialist'),
(2018, 'Dr. Turner', '555-9999', 'Allergist'),
(2019, 'Dr. Miller', '555-1111', 'Emergency Medicine Physician'),
(2020, 'Dr. Garcia', '555-2222', 'Anesthesiologist');


-- Insert statements for Treatment table
INSERT INTO Treatment (TreatmentID, TreatmentName, Description) VALUES
(3001, 'Physical Therapy', 'Rehabilitation exercises'),
(3002, 'Chemotherapy', 'Cancer treatment'),
(3003, 'X-Ray', 'Diagnostic imaging'),
(3004, 'Ultrasound', 'Imaging technique'),
(3005, 'Dermabrasion', 'Skin resurfacing'),
(3006, 'Counseling', 'Therapeutic sessions'),
(3007, 'MRI Scan', 'Magnetic Resonance Imaging'),
(3008, 'Cardiac Catheterization', 'Heart procedure'),
(3009, 'Joint Replacement', 'Orthopedic surgery'),
(3010, 'Colonoscopy', 'Gastrointestinal procedure'),
(3011, 'Laser Eye Surgery', 'Vision correction'),
(3012, 'Chemical Peels', 'Skin treatment'),
(3013, 'Physical Examination', 'Routine health checkup'),
(3014, 'Dialysis', 'Kidney treatment'),
(3015, 'Rheumatoid Arthritis Treatment', 'Rheumatology care'),
(3016, 'ENT Surgery', 'Ear, Nose, Throat surgery'),
(3017, 'Intravenous Therapy', 'IV treatment'),
(3018, 'Prenatal Care', 'Antenatal healthcare'),
(3019, 'Allergy Testing', 'Identification of allergies'),
(3020, 'Sleep Study', 'Sleep disorder analysis');


-- Insert statements for FinancialTransaction table
INSERT INTO FinancialTransaction (TransactionID, PatientID, Date, Amount, TransactionType) VALUES
(4001, 1001, '2023-01-05', 500.00, 'Payment'),
(4002, 1002, '2023-02-20', 750.00, 'Payment'),
(4003, 1003, '2023-03-15', 1200.00, 'Payment'),
(4004, 1004, '2023-04-10', 600.00, 'Payment'),
(4005, 1005, '2023-05-25', 900.00, 'Payment'),
(4006, 1006, '2023-06-30', 1100.00, 'Payment'),
(4007, 1007, '2023-07-15', 800.00, 'Payment'),
(4008, 1008, '2023-08-28', 950.00, 'Payment'),
(4009, 1009, '2023-09-30', 700.00, 'Payment'),
(4010, 1010, '2023-10-25', 850.00, 'Payment'),
(4011, 1011, '2023-11-12', 1000.00, 'Payment'),
(4012, 1012, '2023-12-18', 1200.00, 'Payment'),
(4013, 1013, '2024-01-20', 600.00, 'Payment'),
(4014, 1014, '2024-02-14', 950.00, 'Payment'),
(4015, 1015, '2024-03-20', 800.00, 'Payment'),
(4016, 1016, '2024-04-18', 1100.00, 'Payment'),
(4017, 1017, '2024-05-24', 900.00, 'Payment'),
(4018, 1018, '2024-06-15', 700.00, 'Payment'),
(4019, 1019, '2024-07-20', 850.00, 'Payment'),
(4020, 1020, '2024-08-25', 1000.00, 'Payment');


-- Insert statements for Patient_Physician table
INSERT INTO Patient_Physician (PatientID, PhysicianID) VALUES
(1001, 2001),
(1002, 2002),
(1003, 2003),
(1004, 2004),
(1005, 2005),
(1006, 2006),
(1007, 2007),
(1008, 2008),
(1009, 2009),
(1010, 2010),
(1011, 2011),
(1012, 2012),
(1013, 2013),
(1014, 2014),
(1015, 2015),
(1016, 2016),
(1017, 2017),
(1018, 2018),
(1019, 2019),
(1020, 2020);


-- Insert statements for Patient_Treatment table
INSERT INTO Patient_Treatment (PatientID, TreatmentID) VALUES
(1001, 3001),
(1002, 3002),
(1003, 3003),
(1004, 3004),
(1005, 3005),
(1006, 3006),
(1007, 3007),
(1008, 3008),
(1009, 3009),
(1010, 3010),
(1011, 3011),
(1012, 3012),
(1013, 3013),
(1014, 3014),
(1015, 3015),
(1016, 3016),
(1017, 3017),
(1018, 3018),
(1019, 3019),
(1020, 3020);

-- insert data to generate physician-patient report
INSERT INTO Patient (PatientID, Name, Address, Phone, Sex, HealthCardNumber, Location, FinancialStatus, AdmissionDate, DischargeDate) VALUES
(1041, 'Alice Johnson', '123 Elm Street', '555-0101', 'F', 'HC1036', 101, 'Paid', '2023-01-01', NULL),
(1042, 'Bob Smith', '456 Maple Avenue', '555-0202', 'M', 'HC1037', 102, 'Unpaid', '2023-01-01', '2023-01-02'),
(1043, 'Charlie Davis', '789 Oak Lane', '555-0303', 'M', 'HC1038', 103, 'Paid', '2023-01-01', NULL);
INSERT INTO Patient_Physician (PatientID, PhysicianID) VALUES
(1041, 2001),
(1042, 2001),
(1043, 2001);

-- Create Item Table
CREATE TABLE Item (
    ItemID INTEGER PRIMARY KEY,
    ItemCode VARCHAR(50),
    Description VARCHAR(150),
    Charge DECIMAL
);
-- Insert data into Item table
INSERT INTO Item (ItemID, ItemCode, Description, Charge) VALUES
(1, '2000', 'Semi-Private Room', 200.00),
(2, '2001', 'Private Room', 250.00),
(3, '2005', 'Television', 5.00),
(4, '1580', 'Glucose', 25.00),
(5, '3010', 'Chest X-Ray', 30.00);

-- Create Item_CostCentre Table
CREATE TABLE Item_CostCentre (
    ItemID INTEGER,
    CentreID INTEGER,
    FOREIGN KEY (ItemID) REFERENCES Item(ItemID),
    FOREIGN KEY (CentreID) REFERENCES CostCentre(CentreID)
);

ALTER TABLE Treatment
ADD ItemID INTEGER;

-- Add a foreign key constraint to link ItemID in Treatment with Item table
ALTER TABLE Treatment
ADD FOREIGN KEY (ItemID) REFERENCES Item(ItemID);




-- Insert data into Item_CostCentre table
INSERT INTO Item_CostCentre (ItemID, CentreID) VALUES
(1, 11), (2, 12), (3, 13), (4, 14), (5, 15);

-- Update Treatment table to include ItemID
-- This is an example. You will need to adjust the values based on your existing Treatment data
UPDATE Treatment SET ItemID = 1 WHERE TreatmentID = 3001;
UPDATE Treatment SET ItemID = 2 WHERE TreatmentID = 3002;
-- and so on for other treatments...

-- Insert additional FinancialTransaction records to ensure data for the report
INSERT INTO FinancialTransaction (TransactionID, PatientID, Date, Amount, TransactionType) VALUES
(4021, 1001, '2023-04-10', 200.00, 'Charge'),
(4022, 1002, '2023-04-10', 250.00, 'Charge'),
(4023, 1003, '2023-04-10', 5.00, 'Charge');

-- Insert filler data into FinancialTransaction table
INSERT INTO FinancialTransaction (TransactionID, PatientID, Date, Amount, TransactionType) VALUES
(4024, 1001, '2023-04-10', 100.00, 'Assure'),
(4025, 1002, '2023-04-10', 150.00, 'ESI'),
(4026, 1003, '2023-04-10', 200.00, 'Self Pay'),
(4027, 1004, '2023-04-10', 250.00, 'Assure'),
(4028, 1005, '2023-04-10', 300.00, 'ESI'),
(4029, 1006, '2023-04-10', 350.00, 'Self Pay'),
(4030, 1007, '2023-04-10', 400.00, 'Assure'),
(4031, 1008, '2023-04-10', 450.00, 'ESI'),
(4032, 1009, '2023-04-10', 500.00, 'Self Pay');

-- Note: Ensure that the TransactionID values do not conflict with existing data.
INSERT INTO FinancialTransaction (TransactionID, PatientID, Date, Amount, TransactionType) VALUES
(4033, 1011, '2023-04-09', 120.00, 'Self Pay'),
(4034, 1012, '2023-04-10', 180.00, 'ESI'),
(4035, 1013, '2023-04-11', 75.00, 'Assure'),
(4036, 1014, '2023-04-12', 90.00, 'Other'),
(4037, 1015, '2023-04-13', 110.00, 'ESI'),
(4038, 1016, '2023-04-14', 160.00, 'Self Pay'),
(4039, 1017, '2023-04-15', 130.00, 'Assure'),
(4040, 1018, '2023-04-16', 210.00, 'Other');