-- Sample data for HealthTrack System
USE hospital_db;

-- Insert sample Person records (base for patients and employees)
INSERT INTO Person (first_name, surname, date_of_birth, gender, address, city, postal_code, country, phone, email) VALUES
-- Staff
('Kwame', 'Nkrumah', '1980-05-15', 'Male', '25 Independence Avenue', 'Accra', 'GA-145-6325', 'Ghana', '055-123-4567', 'k.nkrumah@healthtrack.gh'),
('Abena', 'Osei', '1985-08-21', 'Female', '14 Cantonments Road', 'Accra', 'GA-167-9054', 'Ghana', '024-765-4321', 'a.osei@healthtrack.gh'),
('Kofi', 'Mensah', '1975-11-30', 'Male', '7 Volta Street, East Legon', 'Accra', 'GA-178-5432', 'Ghana', '020-987-6543', 'k.mensah@healthtrack.gh'),
('Ama', 'Darko', '1988-04-12', 'Female', '32 Spintex Road', 'Accra', 'GA-195-7632', 'Ghana', '027-345-6789', 'a.darko@healthtrack.gh'),
('Yaw', 'Boateng', '1982-03-25', 'Male', '45 Abelemkpe Street', 'Accra', 'GA-152-8976', 'Ghana', '026-789-0123', 'y.boateng@healthtrack.gh'),
('Akosua', 'Agyeman', '1990-06-08', 'Female', '19 Airport Residential Area', 'Accra', 'GA-183-5421', 'Ghana', '054-456-7890', 'a.agyeman@healthtrack.gh'),
('Kwesi', 'Ansah', '1978-09-17', 'Male', '8 Dansoman Road', 'Accra', 'GA-164-2109', 'Ghana', '023-234-5678', 'k.ansah@healthtrack.gh'),
('Adwoa', 'Adjei', '1986-12-02', 'Female', '27 Labadi Beach Road', 'Accra', 'GA-189-7643', 'Ghana', '055-876-5432', 'a.adjei@healthtrack.gh'),
('Kojo', 'Owusu', '1973-02-14', 'Male', '12 Tema Community 11', 'Tema', 'TM-134-9876', 'Ghana', '020-345-6789', 'k.owusu@healthtrack.gh'),
('Akua', 'Asante', '1992-07-20', 'Female', '33 Sakumono Estate', 'Tema', 'TM-145-8765', 'Ghana', '027-678-9012', 'a.asante@healthtrack.gh'),
('Kwabena', 'Annan', '1981-10-05', 'Male', '5 Kumasi Road', 'Kumasi', 'KS-176-5432', 'Ghana', '024-123-4567', 'k.annan@healthtrack.gh'),
('Afia', 'Boakye', '1984-05-18', 'Female', '22 Ahodwo Road', 'Kumasi', 'KS-158-7654', 'Ghana', '026-987-6543', 'a.boakye@healthtrack.gh'),
('Yaw', 'Baffour', '1979-01-23', 'Male', '16 Cape Coast Road', 'Cape Coast', 'CC-187-6543', 'Ghana', '023-765-4321', 'y.baffour@healthtrack.gh'),
('Abena', 'Gyasi', '1989-03-10', 'Female', '9 Takoradi Road', 'Takoradi', 'TK-167-8954', 'Ghana', '055-234-5678', 'a.gyasi@healthtrack.gh'),
('Kwaku', 'Manu', '1977-08-29', 'Male', '24 Sunyani Road', 'Sunyani', 'SY-128-7632', 'Ghana', '020-876-5432', 'k.manu@healthtrack.gh'),
('Akosua', 'Poku', '1991-11-12', 'Female', '11 Tamale Road', 'Tamale', 'TL-195-4325', 'Ghana', '027-456-7890', 'a.poku@healthtrack.gh'),
('Fiifi', 'Aidoo', '1976-09-08', 'Male', '7 Ho Road', 'Ho', 'HO-143-8765', 'Ghana', '024-678-9012', 'f.aidoo@healthtrack.gh'),
('Efua', 'Amoah', '1987-04-25', 'Female', '18 Koforidua Road', 'Koforidua', 'KD-157-5432', 'Ghana', '026-345-6789', 'e.amoah@healthtrack.gh'),
('Kojo', 'Nyame', '1983-01-01', 'Male', '30 Wa Road', 'Wa', 'WA-124-9876', 'Ghana', '023-987-6543', 'k.nyame@healthtrack.gh'),
('Adjoa', 'Frimpong', '1993-06-15', 'Female', '26 Bolgatanga Road', 'Bolgatanga', 'BG-118-7643', 'Ghana', '055-123-4567', 'a.frimpong@healthtrack.gh'),

-- Patients
('Emmanuel', 'Addo', '1995-12-15', 'Male', '10 Ring Road Central', 'Accra', 'GA-156-7890', 'Ghana', '020-111-2222', 'e.addo@gmail.com'),
('Gifty', 'Asamoah', '1988-07-22', 'Female', '5 Labone Street', 'Accra', 'GA-175-4321', 'Ghana', '027-222-3333', 'g.asamoah@yahoo.com'),
('Michael', 'Ofori', '1970-03-18', 'Male', '20 Osu Oxford Street', 'Accra', 'GA-182-5678', 'Ghana', '024-333-4444', 'michael.ofori@hotmail.com'),
('Victoria', 'Addo', '1992-09-25', 'Female', '15 Nima Road', 'Accra', 'GA-167-8901', 'Ghana', '055-444-5555', 'v.addo@gmail.com'),
('Joseph', 'Acquah', '1965-05-30', 'Male', '8 Achimota Road', 'Accra', 'GA-145-2345', 'Ghana', '023-555-6666', 'j.acquah@yahoo.com'),
('Mercy', 'Twum', '1980-11-12', 'Female', '25 Madina Road', 'Accra', 'GA-138-7890', 'Ghana', '026-666-7777', 'mercy.twum@gmail.com'),
('David', 'Opoku', '1975-08-05', 'Male', '7 Dansoman Road', 'Accra', 'GA-162-3456', 'Ghana', '020-777-8888', 'd.opoku@yahoo.com'),
('Grace', 'Donkor', '1990-02-28', 'Female', '12 East Legon Road', 'Accra', 'GA-183-9012', 'Ghana', '027-888-9999', 'g.donkor@gmail.com'),
('Samuel', 'Agyapong', '1968-04-17', 'Male', '30 Adenta Road', 'Accra', 'GA-195-4567', 'Ghana', '024-999-0000', 's.agyapong@hotmail.com'),
('Abigail', 'Baidoo', '1985-10-08', 'Female', '22 Tema Community 25', 'Tema', 'TM-178-5678', 'Ghana', '055-000-1111', 'a.baidoo@yahoo.com'),
('Francis', 'Duodu', '1972-01-20', 'Male', '9 Tema Community 7', 'Tema', 'TM-161-2345', 'Ghana', '020-111-2222', 'f.duodu@gmail.com'),
('Priscilla', 'Amoako', '1993-06-15', 'Female', '18 Ashaiman Road', 'Tema', 'TM-152-6789', 'Ghana', '027-222-3333', 'p.amoako@yahoo.com'),
('Isaac', 'Baah', '1960-09-02', 'Male', '15 Atonsu Road', 'Kumasi', 'KS-189-0123', 'Ghana', '024-333-4444', 'i.baah@gmail.com'),
('Rebecca', 'Osei', '1982-12-30', 'Female', '20 Bantama Road', 'Kumasi', 'KS-173-4567', 'Ghana', '055-444-5555', 'r.osei@hotmail.com'),
('Benjamin', 'Bonsu', '1978-03-11', 'Male', '8 Tafo Road', 'Kumasi', 'KS-168-8901', 'Ghana', '023-555-6666', 'b.bonsu@yahoo.com'),
('Sarah', 'Mensah', '1996-05-25', 'Female', '27 Asokwa Road', 'Kumasi', 'KS-154-2345', 'Ghana', '026-666-7777', 's.mensah@gmail.com'),
('Philip', 'Takyi', '1973-11-18', 'Male', '14 Elmina Road', 'Cape Coast', 'CC-147-6789', 'Ghana', '020-777-8888', 'p.takyi@yahoo.com'),
('Esther', 'Appiah', '1987-07-05', 'Female', '30 Winneba Road', 'Winneba', 'WN-198-0123', 'Ghana', '027-888-9999', 'e.appiah@gmail.com'),
('Richard', 'Asare', '1969-02-28', 'Male', '11 Berekum Road', 'Sunyani', 'SY-176-4567', 'Ghana', '024-999-0000', 'r.asare@yahoo.com'),
('Janet', 'Obeng', '1990-04-13', 'Female', '9 Yendi Road', 'Tamale', 'TL-163-8901', 'Ghana', '055-000-1111', 'j.obeng@hotmail.com');

-- Insert sample Employee records
INSERT INTO Employee (employee_id, person_id, hire_date, employment_status, emergency_contact_name, emergency_contact_phone) VALUES
(1, 1, '2010-01-15', 'Full-time', 'Esi Nkrumah', '020-123-7890'),
(2, 2, '2012-05-20', 'Full-time', 'Kofi Osei', '027-765-4321'),
(3, 3, '2005-08-10', 'Full-time', 'Akua Mensah', '024-987-6543'),
(4, 4, '2015-03-25', 'Full-time', 'Yaw Darko', '020-345-6789'),
(5, 5, '2009-11-12', 'Full-time', 'Ama Boateng', '055-789-0123'),
(6, 6, '2018-02-05', 'Full-time', 'Kwasi Agyeman', '026-456-7890'),
(7, 7, '2008-07-18', 'Full-time', 'Adwoa Ansah', '023-234-5678'),
(8, 8, '2014-09-30', 'Part-time', 'Kwabena Adjei', '027-876-5432'),
(9, 9, '2007-04-15', 'Full-time', 'Akosua Owusu', '024-345-6789'),
(10, 10, '2019-01-25', 'Full-time', 'Kojo Asante', '020-678-9012'),
(11, 11, '2011-06-08', 'Full-time', 'Afia Annan', '055-123-4567'),
(12, 12, '2016-10-22', 'Part-time', 'Yaw Boakye', '026-987-6543'),
(13, 13, '2006-03-14', 'Full-time', 'Abena Baffour', '023-765-4321'),
(14, 14, '2017-08-05', 'Full-time', 'Kwaku Gyasi', '027-234-5678'),
(15, 15, '2010-12-18', 'Full-time', 'Akosua Manu', '024-876-5432'),
(16, 16, '2020-02-10', 'Part-time', 'Kofi Poku', '020-456-7890'),
(17, 17, '2004-09-20', 'Full-time', 'Efua Aidoo', '055-678-9012'),
(18, 18, '2013-05-15', 'Full-time', 'Fiifi Amoah', '026-345-6789'),
(19, 19, '2008-11-08', 'Full-time', 'Adjoa Nyame', '023-987-6543'),
(20, 20, '2018-07-22', 'Part-time', 'Kojo Frimpong', '027-123-4567');

-- Insert sample Department records
INSERT INTO Department (department_code, name, building, floor, phone_extension, budget, director_id) VALUES
('CARD', 'Cardiology', 'Main Hospital Block', 3, '2101', 750000.00, 1),
('NEUR', 'Neurology', 'Main Hospital Block', 4, '2102', 650000.00, 3),
('PEDI', 'Pediatrics', 'Children''s Wing', 2, '2103', 800000.00, 6),
('OBGY', 'Obstetrics & Gynecology', 'Women''s Health Building', 3, '2104', 720000.00, 4),
('SURG', 'Surgery', 'Surgical Wing', 1, '2105', 950000.00, 9),
('ORTH', 'Orthopedics', 'Surgical Wing', 2, '2106', 680000.00, 11),
('OPHT', 'Ophthalmology', 'Specialized Services Building', 1, '2107', 550000.00, 13),
('DERM', 'Dermatology', 'Specialized Services Building', 2, '2108', 450000.00, 15),
('EMRG', 'Emergency Medicine', 'Emergency Building', 1, '2109', 850000.00, 7),
('INFD', 'Infectious Disease', 'Isolation Wing', 1, '2110', 700000.00, 17),
('ENDO', 'Endocrinology', 'Main Hospital Block', 5, '2111', 580000.00, NULL),
('RADI', 'Radiology', 'Diagnostic Center', 1, '2112', 780000.00, NULL);

-- Insert sample Doctor records
INSERT INTO Doctor (employee_id, speciality, medical_license_number, license_expiry_date, department_code, consultation_fee) VALUES
(1, 'Cardiologist', 'MDC-GH-2010-1234', '2025-12-31', 'CARD', 350.00),
(3, 'Neurologist', 'MDC-GH-2005-5678', '2025-12-31', 'NEUR', 400.00),
(6, 'Pediatrician', 'MDC-GH-2018-9012', '2026-12-31', 'PEDI', 300.00),
(4, 'Obstetrician/Gynecologist', 'MDC-GH-2015-3456', '2026-12-31', 'OBGY', 350.00),
(9, 'General Surgeon', 'MDC-GH-2007-7890', '2025-12-31', 'SURG', 450.00),
(11, 'Orthopedic Surgeon', 'MDC-GH-2011-2345', '2025-12-31', 'ORTH', 400.00),
(13, 'Ophthalmologist', 'MDC-GH-2006-6789', '2025-12-31', 'OPHT', 350.00),
(15, 'Dermatologist', 'MDC-GH-2010-0123', '2025-12-31', 'DERM', 320.00),
(7, 'Emergency Physician', 'MDC-GH-2008-4567', '2025-12-31', 'EMRG', 380.00),
(17, 'Infectious Disease Specialist', 'MDC-GH-2004-8901', '2025-12-31', 'INFD', 370.00);

-- Insert sample Nurse records
INSERT INTO Nurse (employee_id, rotation, salary, qualification, department_code) VALUES
(2, 'Morning', 65000.00, 'BSN, Registered Nurse', 'CARD'),
(5, 'Evening', 60000.00, 'BSN, Registered Nurse', 'NEUR'),
(8, 'Night', 70000.00, 'MSN, Registered Nurse', 'PEDI'),
(10, 'Morning', 62000.00, 'BSN, Registered Nurse', 'OBGY'),
(12, 'Evening', 64000.00, 'BSN, Registered Nurse', 'SURG'),
(14, 'Night', 72000.00, 'MSN, Registered Nurse', 'ORTH'),
(16, 'Morning', 63000.00, 'BSN, Registered Nurse', 'OPHT'),
(18, 'Evening', 61000.00, 'BSN, Registered Nurse', 'DERM'),
(19, 'Night', 71000.00, 'MSN, Registered Nurse', 'EMRG'),
(20, 'Morning', 66000.00, 'BSN, Registered Nurse', 'INFD');

-- Insert sample Ward records
INSERT INTO Ward (department_code, ward_number, name, bed_count, supervisor_id, floor, description) VALUES
('CARD', 1, 'Cardiac Care Unit', 15, 2, 3, 'Specialized cardiac care unit with monitoring equipment'),
('CARD', 2, 'Cardiac General Ward', 25, 2, 3, 'General ward for cardiac patients'),
('NEUR', 1, 'Neurology ICU', 10, 5, 4, 'Intensive care unit for neurological patients'),
('NEUR', 2, 'Neurology General Ward', 20, 5, 4, 'General ward for neurological patients'),
('PEDI', 1, 'Pediatric ICU', 8, 8, 2, 'Pediatric intensive care unit'),
('PEDI', 2, 'Pediatric General Ward', 30, 8, 2, 'General ward for pediatric patients'),
('OBGY', 1, 'Maternity Ward', 25, 10, 3, 'Ward for labor and delivery'),
('OBGY', 2, 'Gynecology Ward', 20, 10, 3, 'Ward for gynecological patients'),
('SURG', 1, 'Surgical ICU', 12, 12, 1, 'Post-surgical intensive care'),
('SURG', 2, 'General Surgical Ward', 35, 12, 1, 'General ward for surgical patients'),
('ORTH', 1, 'Orthopedic Ward', 25, 14, 2, 'Ward for orthopedic patients'),
('OPHT', 1, 'Ophthalmology Ward', 15, 16, 1, 'Ward for eye surgeries and treatments'),
('DERM', 1, 'Dermatology Ward', 10, 18, 2, 'Ward for dermatological conditions requiring hospitalization'),
('EMRG', 1, 'Emergency Observation Ward', 20, 19, 1, 'Short-term observation ward for emergency patients'),
('INFD', 1, 'Isolation Ward', 15, 20, 1, 'Specialized ward for infectious disease patients');

-- Insert sample Bed records
-- Adding sample beds for CARD Ward 1
INSERT INTO Bed (department_code, ward_number, bed_number, bed_type, status, last_maintenance_date, notes) VALUES
('CARD', 1, 1, 'ICU', 'Available', '2025-04-01', 'Equipped with cardiac monitoring'),
('CARD', 1, 2, 'ICU', 'Available', '2025-04-01', 'Equipped with cardiac monitoring'),
('CARD', 1, 3, 'ICU', 'Available', '2025-04-01', 'Equipped with cardiac monitoring'),
('CARD', 1, 4, 'ICU', 'Available', '2025-04-01', 'Equipped with cardiac monitoring'),
('CARD', 1, 5, 'ICU', 'Available', '2025-04-01', 'Equipped with cardiac monitoring'),
('CARD', 1, 6, 'ICU', 'Available', '2025-04-01', 'Equipped with cardiac monitoring'),
('CARD', 1, 7, 'ICU', 'Available', '2025-04-01', 'Equipped with cardiac monitoring'),
('CARD', 1, 8, 'ICU', 'Available', '2025-04-01', 'Equipped with cardiac monitoring'),
('CARD', 1, 9, 'ICU', 'Available', '2025-04-01', 'Equipped with cardiac monitoring'),
('CARD', 1, 10, 'ICU', 'Available', '2025-04-01', 'Equipped with cardiac monitoring'),
('CARD', 1, 11, 'ICU', 'Available', '2025-04-01', 'Equipped with cardiac monitoring'),
('CARD', 1, 12, 'ICU', 'Available', '2025-04-01', 'Equipped with cardiac monitoring'),
('CARD', 1, 13, 'ICU', 'Available', '2025-04-01', 'Equipped with cardiac monitoring'),
('CARD', 1, 14, 'ICU', 'Available', '2025-04-01', 'Equipped with cardiac monitoring'),
('CARD', 1, 15, 'ICU', 'Available', '2025-04-01', 'Equipped with cardiac monitoring');

-- Insert sample beds for PEDI Ward 1
INSERT INTO Bed (department_code, ward_number, bed_number, bed_type, status, last_maintenance_date, notes) VALUES
('PEDI', 1, 1, 'Pediatric', 'Available', '2025-04-05', 'Pediatric ICU bed with monitoring'),
('PEDI', 1, 2, 'Pediatric', 'Available', '2025-04-05', 'Pediatric ICU bed with monitoring'),
('PEDI', 1, 3, 'Pediatric', 'Available', '2025-04-05', 'Pediatric ICU bed with monitoring'),
('PEDI', 1, 4, 'Pediatric', 'Available', '2025-04-05', 'Pediatric ICU bed with monitoring'),
('PEDI', 1, 5, 'Pediatric', 'Available', '2025-04-05', 'Pediatric ICU bed with monitoring'),
('PEDI', 1, 6, 'Pediatric', 'Available', '2025-04-05', 'Pediatric ICU bed with monitoring'),
('PEDI', 1, 7, 'Pediatric', 'Available', '2025-04-05', 'Pediatric ICU bed with monitoring'),
('PEDI', 1, 8, 'Pediatric', 'Available', '2025-04-05', 'Pediatric ICU bed with monitoring');

-- Insert sample beds for EMRG Ward 1
INSERT INTO Bed (department_code, ward_number, bed_number, bed_type, status, last_maintenance_date, notes) VALUES
('EMRG', 1, 1, 'Standard', 'Available', '2025-04-10', 'Emergency observation bed'),
('EMRG', 1, 2, 'Standard', 'Available', '2025-04-10', 'Emergency observation bed'),
('EMRG', 1, 3, 'Standard', 'Available', '2025-04-10', 'Emergency observation bed'),
('EMRG', 1, 4, 'Standard', 'Available', '2025-04-10', 'Emergency observation bed'),
('EMRG', 1, 5, 'Standard', 'Available', '2025-04-10', 'Emergency observation bed'),
('EMRG', 1, 6, 'Standard', 'Reserved', '2025-04-10', 'Emergency observation bed - Reserved for emergency cases'),
('EMRG', 1, 7, 'Standard', 'Reserved', '2025-04-10', 'Emergency observation bed - Reserved for emergency cases'),
('EMRG', 1, 8, 'Standard', 'Available', '2025-04-10', 'Emergency observation bed'),
('EMRG', 1, 9, 'Standard', 'Available', '2025-04-10', 'Emergency observation bed'),
('EMRG', 1, 10, 'Standard', 'Available', '2025-04-10', 'Emergency observation bed'),
('EMRG', 1, 11, 'Standard', 'Available', '2025-04-10', 'Emergency observation bed'),
('EMRG', 1, 12, 'Standard', 'Available', '2025-04-10', 'Emergency observation bed'),
('EMRG', 1, 13, 'Standard', 'Available', '2025-04-10', 'Emergency observation bed'),
('EMRG', 1, 14, 'Standard', 'Available', '2025-04-10', 'Emergency observation bed'),
('EMRG', 1, 15, 'Standard', 'Maintenance', '2025-04-10', 'Emergency observation bed - Under maintenance'),
('EMRG', 1, 16, 'Standard', 'Available', '2025-04-10', 'Emergency observation bed'),
('EMRG', 1, 17, 'Standard', 'Available', '2025-04-10', 'Emergency observation bed'),
('EMRG', 1, 18, 'Standard', 'Available', '2025-04-10', 'Emergency observation bed'),
('EMRG', 1, 19, 'Standard', 'Available', '2025-04-10', 'Emergency observation bed'),
('EMRG', 1, 20, 'Standard', 'Available', '2025-04-10', 'Emergency observation bed');

-- Insert sample Patient records
INSERT INTO Patient (patient_id, person_id, blood_type, allergies, medical_history, insurance_provider, insurance_policy_number, emergency_contact_name, emergency_contact_phone, emergency_contact_relationship) VALUES
(1, 21, 'O+', 'Penicillin', 'Hypertension, Type 2 Diabetes', 'National Health Insurance Scheme', 'NHIS-12345678', 'Elizabeth Addo', '020-333-4444', 'Spouse'),
(2, 22, 'A-', 'Sulfa drugs', 'None', 'Ghana Health Service Staff Insurance', 'GHSSI-87654321', 'Francis Asamoah', '027-444-5555', 'Spouse'),
(3, 23, 'B+', 'Latex', 'Coronary Heart Disease, Stroke in 2018', 'Premium Health Insurance', 'PHI-23456789', 'Agnes Ofori', '024-555-6666', 'Spouse'),
(4, 24, 'AB+', 'None', 'Asthma', 'National Health Insurance Scheme', 'NHIS-34567890', 'George Addo', '055-666-7777', 'Brother'),
(5, 25, 'O-', 'Aspirin', 'Arthritis, Cataracts', 'Ghana Health Insurance', 'GHI-45678901', 'Mary Acquah', '023-777-8888', 'Spouse'),
(6, 26, 'A+', 'None', 'Pregnancy (G2P1)', 'National Health Insurance Scheme', 'NHIS-56789012', 'Daniel Twum', '026-888-9999', 'Spouse'),
(7, 27, 'B-', 'Shellfish', 'Hypertension', 'Metropolitan Health Insurance', 'MHI-67890123', 'Ruth Opoku', '020-999-0000', 'Spouse'),
(8, 28, 'O+', 'Ibuprofen', 'Migraine', 'Ghana Health Service Staff Insurance', 'GHSSI-78901234', 'Philip Donkor', '027-000-1111', 'Spouse'),
(9, 29, 'AB-', 'None', 'Prostate Cancer (in remission), Hypertension', 'Premium Health Insurance', 'PHI-89012345', 'Sarah Agyapong', '024-111-2222', 'Spouse'),
(10, 30, 'A+', 'Peanuts', 'None', 'National Health Insurance Scheme', 'NHIS-90123456', 'Thomas Baidoo', '055-222-3333', 'Spouse'),
(11, 31, 'B+', 'Codeine', 'Type 2 Diabetes, Peripheral Neuropathy', 'Ghana Health Insurance', 'GHI-01234567', 'Grace Duodu', '020-333-4444', 'Spouse'),
(12, 32, 'O+', 'None', 'Anemia', 'National Health Insurance Scheme', 'NHIS-12345678', 'Joseph Amoako', '027-444-5555', 'Spouse'),
(13, 33, 'AB+', 'Dairy', 'Arthritis', 'Ghana Health Service Staff Insurance', 'GHSSI-23456789', 'Martha Baah', '024-555-6666', 'Daughter'),
(14, 34, 'O+', 'None', 'Hypertension', 'Premium Health Insurance', 'PHI-34567890', 'John Osei', '055-666-7777', 'Spouse'),
(15, 35, 'A+', 'Amoxicillin', 'Tuberculosis (completed treatment)', 'National Health Insurance Scheme', 'NHIS-45678901', 'Janet Bonsu', '023-777-8888', 'Spouse'),
(16, 36, 'B+', 'None', 'None', 'Ghana Health Insurance', 'GHI-56789012', 'Isaac Mensah', '026-888-9999', 'Brother'),
(17, 37, 'AB-', 'None', 'Malaria (recurrent)', 'National Health Insurance Scheme', 'NHIS-67890123', 'Hannah Takyi', '020-999-0000', 'Spouse'),
(18, 38, 'O+', 'Sulfur', 'Pregnancy (G1P0)', 'Metropolitan Health Insurance', 'MHI-78901234', 'Peter Appiah', '027-000-1111', 'Spouse'),
(19, 39, 'B+', 'Pollen', 'Chronic Kidney Disease Stage 2', 'Ghana Health Service Staff Insurance', 'GHSSI-89012345', 'Comfort Asare', '024-111-2222', 'Spouse'),
(20, 40, 'O+', 'None', 'Sickle Cell Disease', 'National Health Insurance Scheme', 'NHIS-90123456', 'Eric Obeng', '055-222-3333', 'Brother');

-- Insert sample Medication records
INSERT INTO Medication (name, description, dosage_form, unit_price, stock_quantity, reorder_level) VALUES
('Paracetamol', 'Pain reliever and fever reducer', 'Tablet 500mg', 0.50, 10000, 2000),
('Amoxicillin', 'Antibiotic for bacterial infections', 'Capsule 500mg', 2.00, 5000, 1000),
('Metformin', 'Oral diabetes medication', 'Tablet 500mg', 1.50, 8000, 1500),
('Lisinopril', 'ACE inhibitor for hypertension', 'Tablet 10mg', 2.50, 6000, 1200),
('Salbutamol', 'Bronchodilator for asthma', 'Inhaler 100mcg', 35.00, 1000, 200),
('Artemether/Lumefantrine', 'Antimalarial combination therapy', 'Tablet', 12.00, 4000, 800),
('Omeprazole', 'Proton pump inhibitor for acid reflux', 'Capsule 20mg', 3.00, 5000, 1000),
('Diazepam', 'Benzodiazepine for anxiety disorders', 'Tablet 5mg', 1.50, 3000, 600),
('Hydrochlorothiazide', 'Diuretic for hypertension', 'Tablet 25mg', 1.00, 7000, 1400),
('Ciprofloxacin', 'Broad-spectrum antibiotic', 'Tablet 500mg', 3.50, 4000, 800),
('Metronidazole', 'Antibiotic and antiprotozoal', 'Tablet 400mg', 1.80, 6000, 1200),
('Ibuprofen', 'NSAID for pain and inflammation', 'Tablet 400mg', 0.80, 9000, 1800),
('Folic Acid', 'Vitamin B supplement', 'Tablet 5mg', 0.50, 10000, 2000),
('Albendazole', 'Anthelmintic for parasitic infections', 'Tablet 400mg', 1.20, 5000, 1000),
('Nifedipine', 'Calcium channel blocker for hypertension', 'Tablet 20mg', 2.20, 4000, 800);

-- Insert sample Hospitalization records
INSERT INTO Hospitalization (patient_id, department_code, ward_number, bed_number, diagnosis, doctor_id, admission_date, discharge_date, discharge_notes, status) VALUES
(3, 'CARD', 1, 1, 'Acute Myocardial Infarction', 1, '2025-04-30', NULL, NULL, 'Admitted'),
(8, 'NEUR', 1, 3, 'Severe Migraine with Aura', 3, '2025-05-01', NULL, NULL, 'Admitted'),
(12, 'PEDI', 1, 2, 'Severe Anemia requiring Blood Transfusion', 6, '2025-04-29', NULL, NULL, 'Admitted'),
(6, 'OBGY', 1, 4, 'Labor and Delivery, Term Pregnancy', 4, '2025-05-02', '2025-05-04', 'Normal vaginal delivery of healthy baby girl', 'Discharged'),
(9, 'ORTH', 1, 5, 'Femoral Fracture', 11, '2025-04-25', NULL, NULL, 'Admitted'),
(15, 'INFD', 1, 3, 'Severe Malaria', 17, '2025-05-01', NULL, NULL, 'Admitted'),
(5, 'OPHT', 1, 2, 'Cataract Surgery', 13, '2025-05-02', '2025-05-03', 'Successful cataract removal and lens implantation', 'Discharged'),
(19, 'EMRG', 1, 8, 'Acute Kidney Injury', 7, '2025-05-03', NULL, NULL, 'Admitted'),
(20, 'EMRG', 1, 9, 'Sickle Cell Crisis', 7, '2025-05-03', NULL, NULL, 'Admitted'),
(10, 'EMRG', 1, 10, 'Anaphylactic Reaction to Peanuts', 7, '2025-05-03', '2025-05-04', 'Successfully treated with epinephrine, patient stable', 'Discharged');

-- Insert sample Prescription records
INSERT INTO Prescription (hospitalization_id, doctor_id, medication_id, dosage, frequency, start_date, end_date, instructions, status) VALUES
(1, 1, 4, '10mg', 'Once daily', '2025-04-30', NULL, 'Take in the morning with food', 'Active'),
(1, 1, 7, '20mg', 'Once daily', '2025-04-30', NULL, 'Take 30 minutes before breakfast', 'Active'),
(2, 3, 1, '1000mg', 'Every 6 hours as needed', '2025-05-01', NULL, 'Take for headache pain', 'Active'),
(2, 3, 8, '5mg', 'Once daily at bedtime', '2025-05-01', '2025-05-08', 'Take for anxiety', 'Active'),
(3, 6, 13, '5mg', 'Once daily', '2025-04-29', NULL, 'Take with food', 'Active'),
(3, 6, 1, '500mg', 'Every 6 hours as needed', '2025-04-29', NULL, 'Take for fever', 'Active'),
(4, 4, 1, '500mg', 'Every 6 hours as needed', '2025-05-02', '2025-05-04', 'Take for pain', 'Completed'),
(5, 11, 12, '400mg', 'Every 8 hours', '2025-04-25', NULL, 'Take with food for pain', 'Active'),
(6, 17, 6, '4 tablets', 'Every 12 hours for 3 days', '2025-05-01', '2025-05-04', 'Take with food', 'Active'),
(7, 13, 1, '500mg', 'Every 6 hours as needed', '2025-05-02', '2025-05-05', 'Take for pain', 'Completed'),
(8, 7, 9, '25mg', 'Once daily', '2025-05-03', NULL, 'Take in the morning', 'Active'),
(9, 7, 1, '500mg', 'Every 6 hours as needed', '2025-05-03', NULL, 'Take for pain', 'Active'),
(10, 7, 1, '500mg', 'Every 6 hours as needed', '2025-05-03', '2025-05-04', 'Take for pain', 'Completed');

-- Insert sample MedicationAdministration records
INSERT INTO MedicationAdministration (prescription_id, nurse_id, administration_time, notes) VALUES
(1, 2, '2025-04-30 08:00:00', 'Patient tolerated medication well'),
(1, 2, '2025-05-01 08:00:00', 'Patient tolerated medication well'),
(1, 2, '2025-05-02 08:00:00', 'Patient tolerated medication well'),
(1, 2, '2025-05-03 08:00:00', 'Patient tolerated medication well'),
(2, 2, '2025-04-30 07:30:00', 'Given before breakfast'),
(2, 2, '2025-05-01 07:30:00', 'Given before breakfast'),
(2, 2, '2025-05-02 07:30:00', 'Given before breakfast'),
(2, 2, '2025-05-03 07:30:00', 'Given before breakfast'),
(3, 5, '2025-05-01 14:00:00', 'Given for headache, pain level 7/10'),
(3, 5, '2025-05-01 20:00:00', 'Given for headache, pain level 5/10'),
(3, 5, '2025-05-02 02:00:00', 'Given for headache, pain level 6/10'),
(4, 5, '2025-05-01 22:00:00', 'Patient reports decreased anxiety'),
(4, 5, '2025-05-02 22:00:00', 'Patient reports improved sleep'),
(5, 8, '2025-04-29 12:00:00', 'Given with lunch'),
(5, 8, '2025-04-30 12:00:00', 'Given with lunch'),
(5, 8, '2025-05-01 12:00:00', 'Given with lunch'),
(5, 8, '2025-05-02 12:00:00', 'Given with lunch'),
(5, 8, '2025-05-03 12:00:00', 'Given with lunch'),
(6, 8, '2025-04-29 14:00:00', 'Given for fever of 38.5°C'),
(8, 14, '2025-04-25 08:00:00', 'Given for pain after fracture reduction'),
(8, 14, '2025-04-25 16:00:00', 'Pain level decreased from 8/10 to 4/10'),
(8, 14, '2025-04-26 00:00:00', 'Patient sleeping comfortably'),
(9, 20, '2025-05-01 08:00:00', 'First dose administered'),
(9, 20, '2025-05-01 20:00:00', 'Second dose administered'),
(9, 20, '2025-05-02 08:00:00', 'Third dose administered');

-- Insert sample VitalSigns records
INSERT INTO VitalSigns (hospitalization_id, nurse_id, temperature, heart_rate, blood_pressure_systolic, blood_pressure_diastolic, respiratory_rate, oxygen_saturation, pain_level, notes, recorded_at) VALUES
(1, 2, 37.2, 88, 165, 95, 18, 96.0, 5, 'Patient reports chest pain 5/10', '2025-04-30 08:30:00'),
(1, 2, 37.0, 82, 160, 90, 18, 97.0, 4, 'Chest pain decreased to 4/10 after medication', '2025-04-30 12:30:00'),
(1, 2, 36.8, 80, 158, 88, 16, 98.0, 3, 'Patient comfortable, pain 3/10', '2025-04-30 16:30:00'),
(1, 2, 36.9, 76, 152, 86, 16, 98.0, 2, 'Patient comfortable, pain 2/10', '2025-05-01 08:30:00'),
(1, 2, 37.0, 78, 150, 84, 16, 99.0, 2, 'Patient comfortable, pain 2/10', '2025-05-02 08:30:00'),
(1, 2, 36.8, 74, 148, 82, 16, 99.0, 1, 'Patient comfortable, pain 1/10', '2025-05-03 08:30:00'),
(2, 5, 37.1, 90, 140, 85, 18, 98.0, 8, 'Severe headache 8/10, photophobia', '2025-05-01 08:30:00'),
(2, 5, 37.0, 88, 138, 84, 18, 98.0, 6, 'Headache 6/10 after medication', '2025-05-01 12:30:00'),
(2, 5, 36.9, 86, 136, 82, 16, 99.0, 5, 'Headache 5/10, less photophobia', '2025-05-01 16:30:00'),
(2, 5, 37.0, 84, 134, 80, 16, 99.0, 4, 'Headache 4/10', '2025-05-02 08:30:00'),
(2, 5, 36.8, 82, 132, 80, 16, 99.0, 3, 'Headache 3/10', '2025-05-03 08:30:00'),
(3, 8, 36.5, 110, 110, 70, 22, 92.0, 2, 'Pallor, fatigue, dizziness', '2025-04-29 08:30:00'),
(3, 8, 36.8, 105, 112, 72, 20, 94.0, 2, 'Receiving blood transfusion', '2025-04-29 12:30:00'),
(3, 8, 37.0, 100, 115, 75, 20, 95.0, 1, 'Improved after first unit of blood', '2025-04-29 16:30:00'),
(3, 8, 36.9, 96, 118, 76, 18, 96.0, 1, 'Improved color and energy', '2025-04-30 08:30:00'),
(3, 8, 37.0, 92, 120, 78, 18, 97.0, 1, 'Continuing to improve', '2025-05-01 08:30:00'),
(3, 8, 36.8, 88, 122, 80, 16, 98.0, 0, 'Feeling much better', '2025-05-02 08:30:00'),
(3, 8, 36.9, 84, 125, 82, 16, 98.0, 0, 'No complaints', '2025-05-03 08:30:00');

-- Insert sample Lab records
INSERT INTO Lab (name, department_code, location) VALUES
('Central Laboratory', 'CARD', 'Main Hospital Block, Floor 1'),
('Hematology Lab', 'CARD', 'Main Hospital Block, Floor 1'),
('Microbiology Lab', 'INFD', 'Isolation Wing, Floor 1'),
('Biochemistry Lab', 'CARD', 'Main Hospital Block, Floor 1'),
('Histopathology Lab', 'SURG', 'Surgical Wing, Floor 1');

-- Insert sample LabTest records
INSERT INTO LabTest (name, description, lab_id, cost, turnaround_time_hours) VALUES
('Complete Blood Count', 'Measures different components and features of blood', 2, 50.00, 2),
('Basic Metabolic Panel', 'Measures glucose, calcium, and electrolytes', 4, 60.00, 2),
('Comprehensive Metabolic Panel', 'Measures liver and kidney function', 4, 100.00, 4),
('Lipid Panel', 'Measures cholesterol and triglycerides', 4, 80.00, 4),
('Malaria Parasite Test', 'Identifies malaria parasites in blood', 3, 70.00, 2),
('Urinalysis', 'Analyzes urine components', 1, 30.00, 1),
('Blood Culture', 'Identifies bacteria in blood', 3, 120.00, 72),
('HbA1c', 'Measures average blood glucose for past 2-3 months', 4, 90.00, 4),
('Liver Function Test', 'Measures enzymes and proteins in liver', 4, 85.00, 3),
('Kidney Function Test', 'Measures creatinine and BUN levels', 4, 85.00, 3),
('Thyroid Function Test', 'Measures thyroid hormones', 4, 100.00, 6),
('HIV Test', 'Detects HIV antibodies', 3, 80.00, 4),
('Sickle Cell Test', 'Detects sickle cell trait or disease', 2, 70.00, 4),
('SARS-CoV-2 PCR Test', 'Detects COVID-19 viral RNA', 3, 150.00, 24),
('Blood Type and Rh Factor', 'Determines blood group and Rh factor', 2, 40.00, 1);

-- Insert sample LabOrder records
INSERT INTO LabOrder (hospitalization_id, test_id, doctor_id, ordered_date, priority, notes, status) VALUES
(1, 1, 1, '2025-04-30', 'Urgent', 'Check for anemia', 'Completed'),
(1, 2, 1, '2025-04-30', 'Urgent', 'Check electrolytes', 'Completed'),
(1, 4, 1, '2025-04-30', 'Routine', 'Baseline lipid levels', 'Completed'),
(2, 1, 3, '2025-05-01', 'Routine', 'Baseline CBC', 'Completed'),
(2, 6, 3, '2025-05-01', 'Routine', 'Check for infection', 'Completed'),
(3, 1, 6, '2025-04-29', 'STAT', 'Check hemoglobin level', 'Completed'),
(3, 15, 6, '2025-04-29', 'Urgent', 'For blood transfusion', 'Completed'),
(5, 1, 11, '2025-04-25', 'Urgent', 'Pre-operative assessment', 'Completed'),
(5, 3, 11, '2025-04-25', 'Urgent', 'Pre-operative assessment', 'Completed'),
(6, 5, 17, '2025-05-01', 'STAT', 'Confirm malaria diagnosis', 'Completed'),
(6, 1, 17, '2025-05-01', 'Urgent', 'Check for anemia', 'Completed'),
(8, 2, 7, '2025-05-03', 'STAT', 'Check electrolytes', 'Completed'),
(8, 10, 7, '2025-05-03', 'STAT', 'Assess kidney function', 'Completed'),
(9, 1, 7, '2025-05-03', 'Urgent', 'Check hemoglobin level', 'Completed'),
(9, 13, 7, '2025-05-03', 'Routine', 'Confirm sickle cell status', 'Completed');

-- Insert sample MedicalProcedure records
INSERT INTO MedicalProcedure (name, description, department_code, cost, duration_minutes) VALUES
('Echocardiogram', 'Ultrasound of the heart', 'CARD', 300.00, 45),
('Electrocardiogram (ECG)', 'Recording of heart''s electrical activity', 'CARD', 150.00, 15),
('CT Scan - Head', 'Computed tomography of the head', 'NEUR', 500.00, 30),
('MRI - Brain', 'Magnetic resonance imaging of the brain', 'NEUR', 800.00, 60),
('Cesarean Section', 'Surgical delivery of a baby', 'OBGY', 1500.00, 90),
('Vaginal Delivery', 'Assistance with vaginal childbirth', 'OBGY', 1000.00, 120),
('Appendectomy', 'Surgical removal of appendix', 'SURG', 1200.00, 60),
('Hernia Repair', 'Surgical repair of hernia', 'SURG', 1300.00, 90),
('Cataract Surgery', 'Removal of cloudy lens and implantation of artificial lens', 'OPHT', 1000.00, 30),
('Fracture Reduction', 'Realignment of broken bones', 'ORTH', 900.00, 60),
('Lumbar Puncture', 'Collection of cerebrospinal fluid from spine', 'NEUR', 400.00, 30),
('Colonoscopy', 'Examination of the large intestine', 'SURG', 600.00, 45),
('Blood Transfusion', 'Administration of blood products', 'CARD', 350.00, 120),
('Dialysis - Single Session', 'Filtration of blood to remove waste', 'NEUR', 450.00, 240),
('Chest X-ray', 'Radiographic imaging of chest', 'CARD', 200.00, 15);

-- Insert sample ProcedureOrder records
INSERT INTO ProcedureOrder (hospitalization_id, procedure_id, doctor_id, scheduled_date, scheduled_time, notes, status) VALUES
(1, 1, 1, '2025-04-30', '14:00:00', 'Assess cardiac function', 'Completed'),
(1, 2, 1, '2025-04-30', '10:00:00', 'Baseline ECG', 'Completed'),
(2, 3, 3, '2025-05-01', '13:00:00', 'Check for structural abnormalities', 'Completed'),
(2, 11, 3, '2025-05-02', '11:00:00', 'Check for increased intracranial pressure', 'Scheduled'),
(3, 13, 6, '2025-04-29', '15:00:00', 'Administer 2 units of packed red blood cells', 'Completed'),
(5, 10, 11, '2025-04-25', '16:00:00', 'Reduce and stabilize femoral fracture', 'Completed'),
(6, 5, 17, '2025-05-01', '11:00:00', 'Assess for cerebral malaria', 'Completed'),
(8, 14, 7, '2025-05-03', '16:00:00', 'Emergent dialysis for acute kidney injury', 'Scheduled'),
(9, 15, 7, '2025-05-03', '11:00:00', 'Check for pulmonary complications', 'Completed');

-- Insert sample ProcedureResult records
INSERT INTO ProcedureResult (order_id, performed_by_id, performed_date, performed_time, result_details, complications) VALUES
(1, 1, '2025-04-30', '14:30:00', 'Moderate left ventricular hypertrophy noted. Ejection fraction 45%. Mild mitral regurgitation.', 'None'),
(2, 1, '2025-04-30', '10:15:00', 'Sinus rhythm with ST depression in leads V2-V5, consistent with anterior wall ischemia.', 'None'),
(3, 3, '2025-05-01', '13:20:00', 'No evidence of intracranial hemorrhage or mass effect. Normal ventricular size.', 'None'),
(5, 6, '2025-04-29', '15:30:00', 'Two units of packed red blood cells (Type O+) administered. Pre-transfusion Hgb 6.2 g/dL, post-transfusion Hgb 9.1 g/dL.', 'Mild febrile non-hemolytic reaction that resolved with paracetamol'),
(6, 11, '2025-04-25', '16:45:00', 'Closed reduction of femoral fracture achieved under conscious sedation. Cast applied.', 'None'),
(7, 17, '2025-05-01', '11:30:00', 'No evidence of cerebral malaria. No signs of increased intracranial pressure.', 'None'),
(9, 7, '2025-05-03', '11:20:00', 'Clear lung fields. No evidence of pulmonary edema or pneumonia.', 'None');

-- Insert sample LabResult records
INSERT INTO LabResult (order_id, tech_id, verified_by_id, result_value, reference_range, is_abnormal, performed_date, verified_date, comments) VALUES
(1, 18, 1, 'WBC: 12.5 x10^9/L, RBC: 4.2 x10^12/L, Hgb: 13.5 g/dL, Hct: 40.5%, Plt: 220 x10^9/L', 'WBC: 4.5-11.0 x10^9/L, RBC: 4.5-5.5 x10^12/L, Hgb: 13.5-17.5 g/dL, Hct: 41-50%, Plt: 150-450 x10^9/L', TRUE, '2025-04-30', '2025-04-30', 'Mild leukocytosis, consistent with inflammatory response'),
(2, 18, 1, 'Na: 138 mmol/L, K: 3.8 mmol/L, Cl: 100 mmol/L, CO2: 24 mmol/L, BUN: 18 mg/dL, Cr: 0.9 mg/dL, Glu: 110 mg/dL', 'Na: 135-145 mmol/L, K: 3.5-5.0 mmol/L, Cl: 98-107 mmol/L, CO2: 22-30 mmol/L, BUN: 7-20 mg/dL, Cr: 0.6-1.2 mg/dL, Glu: 70-100 mg/dL', TRUE, '2025-04-30', '2025-04-30', 'Slightly elevated glucose'),
(3, 18, 1, 'TC: 220 mg/dL, HDL: 35 mg/dL, LDL: 150 mg/dL, TG: 175 mg/dL', 'TC: <200 mg/dL, HDL: >40 mg/dL, LDL: <130 mg/dL, TG: <150 mg/dL', TRUE, '2025-04-30', '2025-04-30', 'Elevated cholesterol levels, low HDL, high LDL and triglycerides'),
(4, 18, 3, 'WBC: 9.0 x10^9/L, RBC: 4.8 x10^12/L, Hgb: 14.2 g/dL, Hct: 42.5%, Plt: 280 x10^9/L', 'WBC: 4.5-11.0 x10^9/L, RBC: 4.5-5.5 x10^12/L, Hgb: 13.5-17.5 g/dL, Hct: 41-50%, Plt: 150-450 x10^9/L', FALSE, '2025-05-01', '2025-05-01', 'Within normal limits'),
(5, 18, 3, 'Color: Yellow, Clarity: Clear, pH: 6.0, Protein: Negative, Glucose: Negative, Ketones: Negative, Blood: Negative, Nitrite: Negative, Leukocytes: Negative', 'Varies by parameter', FALSE, '2025-05-01', '2025-05-01', 'Normal urinalysis'),
(6, 19, 6, 'WBC: 3.8 x10^9/L, RBC: 2.5 x10^12/L, Hgb: 6.2 g/dL, Hct: 19.0%, Plt: 210 x10^9/L', 'WBC: 4.5-11.0 x10^9/L, RBC: 4.5-5.5 x10^12/L, Hgb: 13.5-17.5 g/dL, Hct: 41-50%, Plt: 150-450 x10^9/L', TRUE, '2025-04-29', '2025-04-29', 'Severe anemia. Recommend 2 units of packed red blood cells'),
(7, 19, 6, 'Blood Type: O+, Rh Factor: Positive', 'N/A', FALSE, '2025-04-29', '2025-04-29', 'Compatible with transfusion inventory'),
(8, 19, 11, 'WBC: 10.5 x10^9/L, RBC: 4.0 x10^12/L, Hgb: 12.0 g/dL, Hct: 36.0%, Plt: 190 x10^9/L', 'WBC: 4.5-11.0 x10^9/L, RBC: 4.5-5.5 x10^12/L, Hgb: 13.5-17.5 g/dL, Hct: 41-50%, Plt: 150-450 x10^9/L', TRUE, '2025-04-25', '2025-04-25', 'Mild anemia, likely due to blood loss from fracture'),
(9, 19, 11, 'Na: 138 mmol/L, K: 4.2 mmol/L, Cl: 102 mmol/L, CO2: 24 mmol/L, BUN: 16 mg/dL, Cr: 0.8 mg/dL, Glu: 105 mg/dL, Ca: 9.2 mg/dL, TP: 6.8 g/dL, Alb: 4.0 g/dL, AST: 25 U/L, ALT: 30 U/L, ALP: 90 U/L, Bil: 0.8 mg/dL', 'Varies by parameter', FALSE, '2025-04-25', '2025-04-25', 'Comprehensive metabolic panel within normal limits'),
(10, 19, 17, 'Plasmodium falciparum identified, 2% parasitemia', 'Negative', TRUE, '2025-05-01', '2025-05-01', 'Positive for P. falciparum malaria. Recommend artemisinin-based combination therapy'),
(11, 19, 17, 'WBC: 4.0 x10^9/L, RBC: 3.8 x10^12/L, Hgb: 10.5 g/dL, Hct: 32.0%, Plt: 95 x10^9/L', 'WBC: 4.5-11.0 x10^9/L, RBC: 4.5-5.5 x10^12/L, Hgb: 13.5-17.5 g/dL, Hct: 41-50%, Plt: 150-450 x10^9/L', TRUE, '2025-05-01', '2025-05-01', 'Mild anemia and thrombocytopenia consistent with malaria infection'),
(12, 19, 7, 'Na: 129 mmol/L, K: 5.8 mmol/L, Cl: 95 mmol/L, CO2: 18 mmol/L, BUN: 65 mg/dL, Cr: 3.2 mg/dL, Glu: 90 mg/dL', 'Na: 135-145 mmol/L, K: 3.5-5.0 mmol/L, Cl: 98-107 mmol/L, CO2: 22-30 mmol/L, BUN: 7-20 mg/dL, Cr: 0.6-1.2 mg/dL, Glu: 70-100 mg/dL', TRUE, '2025-05-03', '2025-05-03', 'Severe electrolyte abnormalities and azotemia consistent with acute kidney injury'),
(13, 19, 7, 'BUN: 68 mg/dL, Cr: 3.5 mg/dL, eGFR: 20 mL/min/1.73m²', 'BUN: 7-20 mg/dL, Cr: 0.6-1.2 mg/dL, eGFR: >60 mL/min/1.73m²', TRUE, '2025-05-03', '2025-05-03', 'Severe renal impairment, consistent with Stage 4 CKD in acute exacerbation'),
(14, 19, 7, 'WBC: 12.0 x10^9/L, RBC: 2.8 x10^12/L, Hgb: 8.5 g/dL, Hct: 25.0%, Plt: 320 x10^9/L', 'WBC: 4.5-11.0 x10^9/L, RBC: 4.5-5.5 x10^12/L, Hgb: 13.5-17.5 g/dL, Hct: 41-50%, Plt: 150-450 x10^9/L', TRUE, '2025-05-03', '2025-05-03', 'Anemia consistent with sickle cell disease with leukocytosis suggesting vaso-occlusive crisis'),
(15, 19, 7, 'Hemoglobin electrophoresis: HbS 80%, HbF 18%, HbA2 2%', 'HbA >95%, HbA2 2-3.5%, HbF <2%', TRUE, '2025-05-03', '2025-05-03', 'Pattern consistent with homozygous sickle cell disease (SS)');

-- Insert sample Invoice records
INSERT INTO Invoice (hospitalization_id, issue_date, due_date, total_amount, paid_amount, payment_status, payment_method, payment_date, notes) VALUES
(1, '2025-05-03', '2025-06-03', 2500.00, 1000.00, 'Partially Paid', 'National Health Insurance', '2025-05-03', 'NHIS covers 40% of total cost'),
(2, '2025-05-03', '2025-06-03', 1800.00, 1800.00, 'Paid', 'Ghana Health Service Staff Insurance', '2025-05-03', 'Fully covered by insurance'),
(3, '2025-05-03', '2025-06-03', 2200.00, 500.00, 'Partially Paid', 'Cash', '2025-05-03', 'Patient to pay remaining balance in installments'),
(4, '2025-05-04', '2025-06-04', 3500.00, 3500.00, 'Paid', 'National Health Insurance', '2025-05-04', 'Maternal care fully covered under NHIS'),
(5, '2025-05-03', '2025-06-03', 3000.00, 1500.00, 'Partially Paid', 'Ghana Health Insurance', '2025-05-03', 'Insurance covers 50% of orthopedic procedures'),
(6, '2025-05-03', '2025-06-03', 1800.00, 1800.00, 'Paid', 'National Health Insurance', '2025-05-03', 'Fully covered as infectious disease treatment'),
(7, '2025-05-03', '2025-05-03', 1200.00, 1200.00, 'Paid', 'Premium Health Insurance', '2025-05-03', 'Fully covered by private insurance'),
(8, '2025-05-03', '2025-06-03', 2800.00, 0.00, 'Unpaid', NULL, NULL, 'Awaiting insurance verification'),
(9, '2025-05-03', '2025-06-03', 2500.00, 0.00, 'Unpaid', NULL, NULL, 'Awaiting insurance verification'),
(10, '2025-05-04', '2025-06-04', 850.00, 850.00, 'Paid', 'Mobile Money', '2025-05-04', 'Paid via MTN Mobile Money');

-- Insert sample InvoiceItem records
INSERT INTO InvoiceItem (invoice_id, description, quantity, unit_price, total_price, category) VALUES
(1, 'Room Charge - Cardiac Care Unit', 4, 250.00, 1000.00, 'Room'),
(1, 'Echocardiogram', 1, 300.00, 300.00, 'Procedure'),
(1, 'Electrocardiogram', 1, 150.00, 150.00, 'Procedure'),
(1, 'Laboratory Tests', 3, 200.00, 600.00, 'Lab'),
(1, 'Medication - Lisinopril', 4, 2.50, 10.00, 'Medication'),
(1, 'Medication - Omeprazole', 4, 3.00, 12.00, 'Medication'),
(1, 'Doctor''s Consultation Fee', 4, 100.00, 400.00, 'Consultation'),
(1, 'Nursing Care', 4, 7.00, 28.00, 'Other'),
(2, 'Room Charge - Neurology ICU', 3, 300.00, 900.00, 'Room'),
(2, 'CT Scan - Head', 1, 500.00, 500.00, 'Procedure'),
(2, 'Laboratory Tests', 2, 150.00, 300.00, 'Lab'),
(2, 'Medication - Paracetamol', 6, 0.50, 3.00, 'Medication'),
(2, 'Medication - Diazepam', 3, 1.50, 4.50, 'Medication'),
(2, 'Doctor''s Consultation Fee', 3, 30.00, 90.00, 'Consultation'),
(2, 'Nursing Care', 3, 0.83, 2.50, 'Other'),
(3, 'Room Charge - Pediatric ICU', 5, 280.00, 1400.00, 'Room'),
(3, 'Blood Transfusion', 1, 350.00, 350.00, 'Procedure'),
(3, 'Laboratory Tests', 2, 150.00, 300.00, 'Lab'),
(3, 'Medication - Paracetamol', 5, 0.50, 2.50, 'Medication'),
(3, 'Medication - Folic Acid', 5, 0.50, 2.50, 'Medication'),
(3, 'Doctor''s Consultation Fee', 5, 25.00, 125.00, 'Consultation'),
(3, 'Nursing Care', 5, 4.00, 20.00, 'Other'),
(4, 'Room Charge - Maternity Ward', 2, 200.00, 400.00, 'Room'),
(4, 'Vaginal Delivery', 1, 1000.00, 1000.00, 'Procedure'),
(4, 'Laboratory Tests', 2, 100.00, 200.00, 'Lab'),
(4, 'Medication - Paracetamol', 4, 0.50, 2.00, 'Medication'),
(4, 'Newborn Care', 2, 150.00, 300.00, 'Other'),
(4, 'Doctor''s Consultation Fee', 2, 150.00, 300.00, 'Consultation'),
(4, 'Nursing Care', 2, 149.00, 298.00, 'Other'),
(5, 'Room Charge - Orthopedic Ward', 9, 180.00, 1620.00, 'Room'),
(5, 'Fracture Reduction', 1, 900.00, 900.00, 'Procedure'),
(5, 'Laboratory Tests', 2, 150.00, 300.00, 'Lab'),
(5, 'Medication - Ibuprofen', 27, 0.80, 21.60, 'Medication'),
(5, 'Doctor''s Consultation Fee', 9, 15.00, 135.00, 'Consultation'),
(5, 'Nursing Care', 9, 2.60, 23.40, 'Other');

-- Insert sample User records (password_hash would be properly hashed in a real system)
INSERT INTO User (employee_id, username, password_hash, email, role, is_active, last_login) VALUES
(1, 'knkrumah', 'password_hash_would_be_here', 'k.nkrumah@healthtrack.gh', 'Doctor', TRUE, '2025-05-03 08:30:00'),
(2, 'aosei', 'password_hash_would_be_here', 'a.osei@healthtrack.gh', 'Nurse', TRUE, '2025-05-03 07:45:00'),
(3, 'kmensah', 'password_hash_would_be_here', 'k.mensah@healthtrack.gh', 'Doctor', TRUE, '2025-05-03 09:15:00'),
(4, 'adarko', 'password_hash_would_be_here', 'a.darko@healthtrack.gh', 'Doctor', TRUE, '2025-05-03 08:00:00'),
(5, 'yboateng', 'password_hash_would_be_here', 'y.boateng@healthtrack.gh', 'Nurse', TRUE, '2025-05-03 07:30:00'),
(6, 'aagyeman', 'password_hash_would_be_here', 'a.agyeman@healthtrack.gh', 'Doctor', TRUE, '2025-05-03 08:45:00'),
(7, 'kansah', 'password_hash_would_be_here', 'k.ansah@healthtrack.gh', 'Doctor', TRUE, '2025-05-03 09:00:00'),
(18, 'eamoah', 'password_hash_would_be_here', 'e.amoah@healthtrack.gh', 'Lab Technician', TRUE, '2025-05-03 07:00:00'),
(19, 'knyame', 'password_hash_would_be_here', 'k.nyame@healthtrack.gh', 'Lab Technician', TRUE, '2025-05-03 07:15:00'),
(NULL, 'admin', 'password_hash_would_be_here', 'admin@healthtrack.gh', 'Admin', TRUE, '2025-05-03 06:30:00'),
(NULL, 'billing1', 'password_hash_would_be_here', 'billing1@healthtrack.gh', 'Billing Staff', TRUE, '2025-05-03 08:15:00'),
(NULL, 'reception1', 'password_hash_would_be_here', 'reception1@healthtrack.gh', 'Receptionist', TRUE, '2025-05-03 07:00:00');

-- Insert sample ShiftSchedule records
INSERT INTO ShiftSchedule (employee_id, department_code, ward_number, shift_date, shift_start, shift_end, shift_type, status) VALUES
(2, 'CARD', 1, '2025-05-04', '08:00:00', '16:00:00', 'Morning', 'Scheduled'),
(5, 'NEUR', 1, '2025-05-04', '08:00:00', '16:00:00', 'Morning', 'Scheduled'),
(8, 'PEDI', 1, '2025-05-04', '08:00:00', '16:00:00', 'Morning', 'Scheduled'),
(10, 'OBGY', 1, '2025-05-04', '08:00:00', '16:00:00', 'Morning', 'Scheduled'),
(12, 'SURG', 1, '2025-05-04', '16:00:00', '00:00:00', 'Evening', 'Scheduled'),
(14, 'ORTH', 1, '2025-05-04', '16:00:00', '00:00:00', 'Evening', 'Scheduled'),
(16, 'OPHT', 1, '2025-05-04', '16:00:00', '00:00:00', 'Evening', 'Scheduled'),
(18, 'DERM', 1, '2025-05-04', '16:00:00', '00:00:00', 'Evening', 'Scheduled'),
(19, 'EMRG', 1, '2025-05-04', '00:00:00', '08:00:00', 'Night', 'Scheduled'),
(20, 'INFD', 1, '2025-05-04', '00:00:00', '08:00:00', 'Night', 'Scheduled'),
(2, 'CARD', 1, '2025-05-05', '08:00:00', '16:00:00', 'Morning', 'Scheduled'),
(5, 'NEUR', 1, '2025-05-05', '08:00:00', '16:00:00', 'Morning', 'Scheduled'),
(8, 'PEDI', 1, '2025-05-05', '08:00:00', '16:00:00', 'Morning', 'Vacation'),
(10, 'OBGY', 1, '2025-05-05', '08:00:00', '16:00:00', 'Morning', 'Scheduled'),
(12, 'SURG', 1, '2025-05-05', '16:00:00', '00:00:00', 'Evening', 'Scheduled'),
(14, 'ORTH', 1, '2025-05-05', '16:00:00', '00:00:00', 'Evening', 'Sick Leave'),
(16, 'OPHT', 1, '2025-05-05', '16:00:00', '00:00:00', 'Evening', 'Scheduled'),
(18, 'DERM', 1, '2025-05-05', '16:00:00', '00:00:00', 'Evening', 'Scheduled'),
(19, 'EMRG', 1, '2025-05-05', '00:00:00', '08:00:00', 'Night', 'Scheduled'),
(20, 'INFD', 1, '2025-05-05', '00:00:00', '08:00:00', 'Night', 'Scheduled');

-- Insert sample PatientAllergy records
INSERT INTO PatientAllergy (patient_id, allergen, reaction, severity, diagnosed_date, diagnosed_by_id, notes) VALUES
(1, 'Penicillin', 'Rash, itching, swelling', 'Moderate', '2015-06-15', 1, 'Avoid all penicillin-based antibiotics'),
(3, 'Latex', 'Contact dermatitis', 'Mild', '2018-02-10', 3, 'Use latex-free gloves and equipment'),
(5, 'Aspirin', 'GI irritation, bleeding', 'Moderate', '2010-11-22', 1, 'Use paracetamol as alternative'),
(7, 'Shellfish', 'Hives, difficulty breathing', 'Severe', '2019-08-05', 7, 'Carries EpiPen for emergencies'),
(8, 'Ibuprofen', 'Facial swelling, wheezing', 'Moderate', '2020-03-18', 3, 'Avoid all NSAIDs'),
(10, 'Peanuts', 'Anaphylaxis', 'Life-threatening', '2018-12-01', 6, 'Carries EpiPen, strict avoidance required'),
(11, 'Codeine', 'Nausea, vomiting, dizziness', 'Moderate', '2016-05-30', 9, 'Use alternative pain medications'),
(13, 'Dairy', 'Abdominal pain, diarrhea', 'Mild', '2017-09-12', 6, 'Lactose intolerance'),
(15, 'Amoxicillin', 'Rash, fever', 'Moderate', '2022-01-15', 17, 'Cross-reactive with penicillin'),
(19, 'Pollen', 'Rhinitis, conjunctivitis', 'Mild', '2018-04-20', 15, 'Seasonal allergies, worse in March-April');

-- Insert sample PatientVisit records (outpatient visits)
INSERT INTO PatientVisit (patient_id, doctor_id, department_code, visit_date, visit_time, chief_complaint, diagnosis, treatment_plan, follow_up_date, visit_type, status, notes) VALUES
(2, 4, 'OBGY', '2025-04-15', '10:00:00', 'Irregular menstrual cycles', 'Polycystic Ovary Syndrome', 'Oral contraceptives, lifestyle modifications', '2025-06-15', 'Initial', 'Completed', 'Patient to return in 2 months to assess response to treatment'),
(4, 6, 'PEDI', '2025-04-20', '09:30:00', 'Asthma exacerbation', 'Moderate Persistent Asthma', 'Increased inhaler dosage, added controller medication', '2025-05-20', 'Follow-up', 'Completed', 'Symptoms improved with previous treatment'),
(7, 1, 'CARD', '2025-04-22', '11:00:00', 'Chest pain on exertion', 'Stable Angina', 'Nitroglycerin PRN, aspirin daily', '2025-05-20', 'Initial', 'Completed', 'Stress test scheduled for next week'),
(11, 1, 'CARD', '2025-04-25', '14:00:00', 'Routine diabetes follow-up', 'Type 2 Diabetes, Hypertension', 'Continued metformin, added lisinopril', '2025-07-25', 'Follow-up', 'Completed', 'HbA1c improved from 8.2% to 7.4%'),
(13, 11, 'ORTH', '2025-04-28', '16:30:00', 'Knee pain, limited mobility', 'Osteoarthritis of the knee', 'Physical therapy, paracetamol PRN', '2025-05-28', 'Initial', 'Completed', 'Consider intra-articular steroid injection if no improvement'),
(14, 1, 'CARD', '2025-05-01', '09:00:00', 'Hypertension follow-up', 'Essential Hypertension', 'Continued lisinopril, reduced salt intake', '2025-08-01', 'Follow-up', 'Completed', 'BP improved to 138/85 mmHg'),
(16, 6, 'PEDI', '2025-05-02', '10:30:00', 'Routine check-up', 'Well child', 'Routine immunizations given', '2025-11-02', 'Follow-up', 'Completed', 'Growth and development appropriate for age'),
(17, 17, 'INFD', '2025-05-02', '13:00:00', 'Fever, chills, headache', 'Malaria', 'Artemether/Lumefantrine for 3 days', '2025-05-09', 'Initial', 'Completed', 'Thin blood smear positive for P. falciparum'),
(18, 4, 'OBGY', '2025-05-03', '09:00:00', 'First prenatal visit', 'Pregnancy, first trimester', 'Prenatal vitamins, routine screening tests', '2025-06-01', 'Initial', 'Completed', 'Estimated due date January 15, 2026'),
(1, 13, 'OPHT', '2025-05-04', '11:30:00', 'Blurry vision', 'Hypermetropia', 'Prescription glasses', '2025-11-04', 'Initial', 'Scheduled', NULL);