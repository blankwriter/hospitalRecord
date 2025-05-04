-- HealthTrack System Enhanced Database Schema

-- Create database
CREATE DATABASE IF NOT EXISTS hospital_db;
USE hospital_db;

-- Create Person table (base for all people in the system)
CREATE TABLE Person (
    person_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    surname VARCHAR(50) NOT NULL,
    date_of_birth DATE,
    gender ENUM('Male', 'Female', 'Other') NOT NULL,
    address VARCHAR(255) NOT NULL,
    city VARCHAR(50) NOT NULL,
    postal_code VARCHAR(20) NOT NULL,
    country VARCHAR(50) NOT NULL DEFAULT 'Ghana',
    phone VARCHAR(20) NOT NULL,
    email VARCHAR(100),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- Create Employee table (extends Person)
CREATE TABLE Employee (
    employee_id INT PRIMARY KEY,
    person_id INT NOT NULL,
    hire_date DATE NOT NULL,
    employment_status ENUM('Full-time', 'Part-time', 'Contract', 'Terminated') NOT NULL DEFAULT 'Full-time',
    emergency_contact_name VARCHAR(100),
    emergency_contact_phone VARCHAR(20),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (person_id) REFERENCES Person(person_id) ON DELETE CASCADE
);

-- Create Department table
CREATE TABLE Department (
    department_code VARCHAR(10) PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    building VARCHAR(50) NOT NULL,
    floor INT NOT NULL,
    phone_extension VARCHAR(10),
    budget DECIMAL(12, 2),
    director_id INT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (director_id) REFERENCES Employee(employee_id)
);

-- Create Doctor table (specializes Employee)
CREATE TABLE Doctor (
    employee_id INT PRIMARY KEY,
    speciality VARCHAR(100) NOT NULL,
    medical_license_number VARCHAR(50) NOT NULL,
    license_expiry_date DATE NOT NULL,
    department_code VARCHAR(10) NOT NULL,
    consultation_fee DECIMAL(10, 2),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (employee_id) REFERENCES Employee(employee_id) ON DELETE CASCADE,
    FOREIGN KEY (department_code) REFERENCES Department(department_code)
);

-- Create Nurse table (specializes Employee)
CREATE TABLE Nurse (
    employee_id INT PRIMARY KEY,
    rotation VARCHAR(50) NOT NULL,
    salary DECIMAL(10, 2) NOT NULL,
    qualification VARCHAR(100) NOT NULL,
    department_code VARCHAR(10) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (employee_id) REFERENCES Employee(employee_id) ON DELETE CASCADE,
    FOREIGN KEY (department_code) REFERENCES Department(department_code)
);

-- Create Ward table
CREATE TABLE Ward (
    department_code VARCHAR(10),
    ward_number INT,
    name VARCHAR(100) NOT NULL,
    bed_count INT NOT NULL,
    supervisor_id INT NOT NULL,
    floor INT NOT NULL,
    description TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (department_code, ward_number),
    FOREIGN KEY (department_code) REFERENCES Department(department_code),
    FOREIGN KEY (supervisor_id) REFERENCES Nurse(employee_id)
);

-- Create Bed table for better bed management
CREATE TABLE Bed (
    department_code VARCHAR(10),
    ward_number INT,
    bed_number INT,
    bed_type ENUM('Standard', 'Electric', 'Bariatric', 'ICU', 'Pediatric') NOT NULL DEFAULT 'Standard',
    status ENUM('Available', 'Occupied', 'Reserved', 'Maintenance') NOT NULL DEFAULT 'Available',
    last_maintenance_date DATE,
    notes TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (department_code, ward_number, bed_number),
    FOREIGN KEY (department_code, ward_number) REFERENCES Ward(department_code, ward_number)
);

-- Create Patient table (extends Person)
CREATE TABLE Patient (
    patient_id INT PRIMARY KEY,
    person_id INT NOT NULL,
    blood_type VARCHAR(5),
    allergies TEXT,
    medical_history TEXT,
    insurance_provider VARCHAR(100),
    insurance_policy_number VARCHAR(50),
    emergency_contact_name VARCHAR(100) NOT NULL,
    emergency_contact_phone VARCHAR(20) NOT NULL,
    emergency_contact_relationship VARCHAR(50) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (person_id) REFERENCES Person(person_id) ON DELETE CASCADE
);

-- Create Hospitalization table (for patient stays)
CREATE TABLE Hospitalization (
    hospitalization_id INT AUTO_INCREMENT PRIMARY KEY,
    patient_id INT NOT NULL,
    department_code VARCHAR(10) NOT NULL,
    ward_number INT NOT NULL,
    bed_number INT NOT NULL,
    diagnosis VARCHAR(255) NOT NULL,
    doctor_id INT NOT NULL,
    admission_date DATE NOT NULL,
    discharge_date DATE,
    discharge_notes TEXT,
    status ENUM('Admitted', 'Discharged', 'Transferred') NOT NULL DEFAULT 'Admitted',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (patient_id) REFERENCES Patient(patient_id),
    FOREIGN KEY (department_code, ward_number, bed_number) REFERENCES Bed(department_code, ward_number, bed_number),
    FOREIGN KEY (doctor_id) REFERENCES Doctor(employee_id)
);

-- Create Medication table
CREATE TABLE Medication (
    medication_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    description TEXT,
    dosage_form VARCHAR(50) NOT NULL,
    unit_price DECIMAL(10, 2) NOT NULL,
    stock_quantity INT NOT NULL DEFAULT 0,
    reorder_level INT NOT NULL DEFAULT 10,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- Create Prescription table to record medications prescribed to patients
CREATE TABLE Prescription (
    prescription_id INT AUTO_INCREMENT PRIMARY KEY,
    hospitalization_id INT NOT NULL,
    doctor_id INT NOT NULL,
    medication_id INT NOT NULL,
    dosage VARCHAR(50) NOT NULL,
    frequency VARCHAR(50) NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE,
    instructions TEXT,
    status ENUM('Active', 'Completed', 'Cancelled') NOT NULL DEFAULT 'Active',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (hospitalization_id) REFERENCES Hospitalization(hospitalization_id),
    FOREIGN KEY (doctor_id) REFERENCES Doctor(employee_id),
    FOREIGN KEY (medication_id) REFERENCES Medication(medication_id)
);

-- Create MedicationAdministration table to track when medications are given
CREATE TABLE MedicationAdministration (
    administration_id INT AUTO_INCREMENT PRIMARY KEY,
    prescription_id INT NOT NULL,
    nurse_id INT NOT NULL,
    administration_time DATETIME NOT NULL,
    notes TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (prescription_id) REFERENCES Prescription(prescription_id),
    FOREIGN KEY (nurse_id) REFERENCES Nurse(employee_id)
);

-- Create VitalSigns table to record patient vital measurements
CREATE TABLE VitalSigns (
    vitals_id INT AUTO_INCREMENT PRIMARY KEY,
    hospitalization_id INT NOT NULL,
    nurse_id INT NOT NULL,
    temperature DECIMAL(4, 1),
    heart_rate INT,
    blood_pressure_systolic INT,
    blood_pressure_diastolic INT,
    respiratory_rate INT,
    oxygen_saturation DECIMAL(4, 1),
    pain_level INT,
    notes TEXT,
    recorded_at DATETIME NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (hospitalization_id) REFERENCES Hospitalization(hospitalization_id),
    FOREIGN KEY (nurse_id) REFERENCES Nurse(employee_id)
);

-- Create MedicalProcedure table
CREATE TABLE MedicalProcedure (
    procedure_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    description TEXT,
    department_code VARCHAR(10) NOT NULL,
    cost DECIMAL(10, 2) NOT NULL,
    duration_minutes INT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (department_code) REFERENCES Department(department_code)
);

-- Create ProcedureOrder table for procedures ordered for patients
CREATE TABLE ProcedureOrder (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    hospitalization_id INT NOT NULL,
    procedure_id INT NOT NULL,
    doctor_id INT NOT NULL,
    scheduled_date DATE NOT NULL,
    scheduled_time TIME,
    notes TEXT,
    status ENUM('Scheduled', 'Completed', 'Cancelled') NOT NULL DEFAULT 'Scheduled',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (hospitalization_id) REFERENCES Hospitalization(hospitalization_id),
    FOREIGN KEY (procedure_id) REFERENCES MedicalProcedure(procedure_id),
    FOREIGN KEY (doctor_id) REFERENCES Doctor(employee_id)
);

-- Create ProcedureResult table to record procedure outcomes
CREATE TABLE ProcedureResult (
    result_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT NOT NULL,
    performed_by_id INT NOT NULL,
    performed_date DATE NOT NULL,
    performed_time TIME NOT NULL,
    result_details TEXT,
    complications TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (order_id) REFERENCES ProcedureOrder(order_id),
    FOREIGN KEY (performed_by_id) REFERENCES Employee(employee_id)
);

-- Create Invoice table
CREATE TABLE Invoice (
    invoice_id INT AUTO_INCREMENT PRIMARY KEY,
    hospitalization_id INT NOT NULL,
    issue_date DATE NOT NULL,
    due_date DATE NOT NULL,
    total_amount DECIMAL(12, 2) NOT NULL,
    paid_amount DECIMAL(12, 2) NOT NULL DEFAULT 0,
    payment_status ENUM('Unpaid', 'Partially Paid', 'Paid', 'Waived') NOT NULL DEFAULT 'Unpaid',
    payment_method VARCHAR(50),
    payment_date DATE,
    notes TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (hospitalization_id) REFERENCES Hospitalization(hospitalization_id)
);

-- Create InvoiceItem table for itemized billing
CREATE TABLE InvoiceItem (
    item_id INT AUTO_INCREMENT PRIMARY KEY,
    invoice_id INT NOT NULL,
    description VARCHAR(255) NOT NULL,
    quantity INT NOT NULL DEFAULT 1,
    unit_price DECIMAL(10, 2) NOT NULL,
    total_price DECIMAL(12, 2) NOT NULL,
    category ENUM('Room', 'Medication', 'Procedure', 'Consultation', 'Lab', 'Other') NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (invoice_id) REFERENCES Invoice(invoice_id)
);

-- Create Lab table for laboratory facilities
CREATE TABLE Lab (
    lab_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    department_code VARCHAR(10) NOT NULL,
    location VARCHAR(100) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (department_code) REFERENCES Department(department_code)
);

-- Create LabTest table for different types of lab tests
CREATE TABLE LabTest (
    test_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    description TEXT,
    lab_id INT NOT NULL,
    cost DECIMAL(10, 2) NOT NULL,
    turnaround_time_hours INT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (lab_id) REFERENCES Lab(lab_id)
);

-- Create LabOrder table for lab tests ordered for patients
CREATE TABLE LabOrder (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    hospitalization_id INT NOT NULL,
    test_id INT NOT NULL,
    doctor_id INT NOT NULL,
    ordered_date DATE NOT NULL,
    priority ENUM('Routine', 'Urgent', 'STAT') NOT NULL DEFAULT 'Routine',
    notes TEXT,
    status ENUM('Ordered', 'Specimen Collected', 'In Progress', 'Completed', 'Cancelled') NOT NULL DEFAULT 'Ordered',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (hospitalization_id) REFERENCES Hospitalization(hospitalization_id),
    FOREIGN KEY (test_id) REFERENCES LabTest(test_id),
    FOREIGN KEY (doctor_id) REFERENCES Doctor(employee_id)
);

-- Create LabResult table to record lab test results
CREATE TABLE LabResult (
    result_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT NOT NULL,
    tech_id INT NOT NULL,
    verified_by_id INT,
    result_value TEXT NOT NULL,
    reference_range VARCHAR(100),
    is_abnormal BOOLEAN DEFAULT FALSE,
    performed_date DATE NOT NULL,
    verified_date DATE,
    comments TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (order_id) REFERENCES LabOrder(order_id),
    FOREIGN KEY (tech_id) REFERENCES Employee(employee_id),
    FOREIGN KEY (verified_by_id) REFERENCES Doctor(employee_id)
);

-- Create ShiftSchedule table for staff scheduling
CREATE TABLE ShiftSchedule (
    schedule_id INT AUTO_INCREMENT PRIMARY KEY,
    employee_id INT NOT NULL,
    department_code VARCHAR(10) NOT NULL,
    ward_number INT,
    shift_date DATE NOT NULL,
    shift_start TIME NOT NULL,
    shift_end TIME NOT NULL,
    shift_type ENUM('Morning', 'Evening', 'Night', 'On-Call') NOT NULL,
    status ENUM('Scheduled', 'Completed', 'Cancelled', 'Sick Leave', 'Vacation') NOT NULL DEFAULT 'Scheduled',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (employee_id) REFERENCES Employee(employee_id),
    FOREIGN KEY (department_code) REFERENCES Department(department_code),
    FOREIGN KEY (department_code, ward_number) REFERENCES Ward(department_code, ward_number)
);

-- Create PatientAllergy table for detailed allergy tracking
CREATE TABLE PatientAllergy (
    allergy_id INT AUTO_INCREMENT PRIMARY KEY,
    patient_id INT NOT NULL,
    allergen VARCHAR(100) NOT NULL,
    reaction VARCHAR(255) NOT NULL,
    severity ENUM('Mild', 'Moderate', 'Severe', 'Life-threatening') NOT NULL,
    diagnosed_date DATE,
    diagnosed_by_id INT,
    notes TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (patient_id) REFERENCES Patient(patient_id),
    FOREIGN KEY (diagnosed_by_id) REFERENCES Doctor(employee_id)
);

-- Create User table for system users
CREATE TABLE User (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    employee_id INT,
    username VARCHAR(50) NOT NULL UNIQUE,
    password_hash VARCHAR(255) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    role ENUM('Admin', 'Doctor', 'Nurse', 'Lab Technician', 'Receptionist', 'Billing Staff') NOT NULL,
    is_active BOOLEAN NOT NULL DEFAULT TRUE,
    last_login DATETIME,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (employee_id) REFERENCES Employee(employee_id)
);

-- Create PatientVisit table for outpatient visits
CREATE TABLE PatientVisit (
    visit_id INT AUTO_INCREMENT PRIMARY KEY,
    patient_id INT NOT NULL,
    doctor_id INT NOT NULL,
    department_code VARCHAR(10) NOT NULL,
    visit_date DATE NOT NULL,
    visit_time TIME NOT NULL,
    chief_complaint TEXT NOT NULL,
    diagnosis TEXT,
    treatment_plan TEXT,
    follow_up_date DATE,
    visit_type ENUM('Initial', 'Follow-up', 'Emergency', 'Specialist Referral') NOT NULL,
    status ENUM('Scheduled', 'Checked-in', 'In-Progress', 'Completed', 'Cancelled', 'No-Show') NOT NULL DEFAULT 'Scheduled',
    notes TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (patient_id) REFERENCES Patient(patient_id),
    FOREIGN KEY (doctor_id) REFERENCES Doctor(employee_id),
    FOREIGN KEY (department_code) REFERENCES Department(department_code)
);

-- Create index for faster lookups
CREATE INDEX idx_hospitalization_patient ON Hospitalization(patient_id);
CREATE INDEX idx_hospitalization_status ON Hospitalization(status);
CREATE INDEX idx_hospitalization_dates ON Hospitalization(admission_date, discharge_date);
CREATE INDEX idx_prescription_status ON Prescription(status);
CREATE INDEX idx_procedure_order_status ON ProcedureOrder(status);
CREATE INDEX idx_invoice_payment_status ON Invoice(payment_status);
CREATE INDEX idx_lab_order_status ON LabOrder(status);
CREATE INDEX idx_patient_visit_date ON PatientVisit(visit_date);
CREATE INDEX idx_employee_department ON Doctor(department_code);
CREATE INDEX idx_nurse_department ON Nurse(department_code);
CREATE INDEX idx_shift_schedule_date ON ShiftSchedule(shift_date);