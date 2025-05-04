-- Sample data for HealthTrack System
USE hospital_db;

-- Insert sample employees
INSERT INTO Employee (first_name, surname, address, phone) VALUES
('John', 'Smith', '123 Medical Ave, City', '555-1234'),
('Sarah', 'Johnson', '456 Health St, City', '555-2345'),
('Michael', 'Brown', '789 Hospital Rd, City', '555-3456'),
('Emily', 'Davis', '101 Care Ln, City', '555-4567'),
('David', 'Wilson', '202 Nurse Blvd, City', '555-5678'),
('Amanda', 'Taylor', '303 Doctor St, City', '555-6789'),
('Robert', 'Martinez', '404 Surgeon Ave, City', '555-7890'),
('Jessica', 'Anderson', '505 Clinic Rd, City', '555-8901'),
('Daniel', 'Thomas', '606 Pharmacy St, City', '555-9012'),
('Jennifer', 'Jackson', '707 Health Dr, City', '555-0123');

-- Insert sample departments
INSERT INTO Department (department_code, name, building, director_id) VALUES
('CARD', 'Cardiology', 'Building A', 1),
('NEUR', 'Neurology', 'Building B', 3),
('PEDI', 'Pediatrics', 'Building C', 6),
('SURG', 'Surgery', 'Building A', 7),
('EMER', 'Emergency', 'Building D', NULL);

-- Insert sample doctors
INSERT INTO Doctor (employee_id, speciality) VALUES
(1, 'Cardiologist'),
(3, 'Neurologist'),
(6, 'Pediatrician'),
(7, 'General Surgeon'),
(9, 'Emergency Physician');

-- Insert sample nurses
INSERT INTO Nurse (employee_id, rotation, salary, department_code) VALUES
(2, 'Morning', 65000.00, 'CARD'),
(4, 'Evening', 62000.00, 'NEUR'),
(5, 'Night', 70000.00, 'CARD'),
(8, 'Morning', 63000.00, 'PEDI'),
(10, 'Evening', 68000.00, 'SURG');

-- Insert sample wards
INSERT INTO Ward (department_code, ward_number, bed_count, supervisor_id) VALUES
('CARD', 1, 10, 2),
('CARD', 2, 8, 5),
('NEUR', 1, 12, 4),
('PEDI', 1, 15, 8),
('SURG', 1, 6, 10),
('SURG', 2, 8, 10);

-- Insert sample patients
INSERT INTO Patient (first_name, surname, address, phone) VALUES
('James', 'Williams', '111 Patient St, City', '555-1111'),
('Mary', 'Jones', '222 Recovery Rd, City', '555-2222'),
('Richard', 'Brown', '333 Wellness Ave, City', '555-3333'),
('Patricia', 'Miller', '444 Healing Ln, City', '555-4444'),
('Charles', 'Davis', '555 Care St, City', '555-5555'),
('Linda', 'Wilson', '666 Health Ave, City', '555-6666'),
('Thomas', 'Moore', '777 Hospital St, City', '555-7777'),
('Elizabeth', 'Taylor', '888 Clinic Rd, City', '555-8888'),
('Joseph', 'Anderson', '999 Doctor Dr, City', '555-9999'),
('Margaret', 'Thomas', '101 Medical Blvd, City', '555-1010');

-- Insert sample hospitalizations
INSERT INTO Hospitalization (patient_id, department_code, ward_number, bed_number, diagnosis, doctor_id, admission_date, discharge_date) VALUES
(1, 'CARD', 1, 3, 'Hypertension', 1, '2025-05-01', NULL),
(2, 'NEUR', 1, 5, 'Migraine', 3, '2025-05-02', '2025-05-07'),
(3, 'PEDI', 1, 2, 'Pneumonia', 6, '2025-05-03', NULL),
(4, 'SURG', 1, 1, 'Appendicitis', 7, '2025-05-01', '2025-05-04'),
(5, 'CARD', 2, 4, 'Arrhythmia', 1, '2025-05-05', NULL),
(6, 'SURG', 2, 3, 'Hernia', 7, '2025-05-04', '2025-05-08'),
(7, 'NEUR', 1, 8, 'Seizure', 3, '2025-05-06', NULL),
(8, 'PEDI', 1, 10, 'Bronchitis', 6, '2025-05-07', '2025-05-10');