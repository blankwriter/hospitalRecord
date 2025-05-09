package main.java.hospital.model;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.Objects;


public class Hospitalization {
    private Integer hospitalizationId;
    private Integer patientId;
    private String departmentCode;
    private Integer wardNumber;
    private Integer bedNumber;
    private String diagnosis;
    private Integer doctorId;
    private LocalDate admissionDate;
    private LocalDate dischargeDate;
    private LocalDateTime createdAt;
    private LocalDateTime updatedAt;

    /**
     * Default constructor
     */
    public Hospitalization() {
    }

    /**
     * Constructor with required fields
     *
     * @param patientId       The ID of the hospitalized patient
     * @param departmentCode  The code of the department where the patient is hospitalized
     * @param wardNumber      The number of the ward where the patient is hospitalized
     * @param bedNumber       The bed number assigned to the patient
     * @param diagnosis       The patient's diagnosis
     * @param doctorId        The ID of the doctor treating the patient
     * @param admissionDate   The date when the patient was admitted
     */
    public Hospitalization(Integer patientId, String departmentCode, Integer wardNumber,
                           Integer bedNumber, String diagnosis, Integer doctorId,
                           LocalDate admissionDate) {
        this.patientId = patientId;
        this.departmentCode = departmentCode;
        this.wardNumber = wardNumber;
        this.bedNumber = bedNumber;
        this.diagnosis = diagnosis;
        this.doctorId = doctorId;
        this.admissionDate = admissionDate;
    }

    /**
     * Full constructor
     *
     * @param hospitalizationId The hospitalization ID
     * @param patientId         The ID of the hospitalized patient
     * @param departmentCode    The code of the department where the patient is hospitalized
     * @param wardNumber        The number of the ward where the patient is hospitalized
     * @param bedNumber         The bed number assigned to the patient
     * @param diagnosis         The patient's diagnosis
     * @param doctorId          The ID of the doctor treating the patient
     * @param admissionDate     The date when the patient was admitted
     * @param dischargeDate     The date when the patient was discharged (can be null if still hospitalized)
     * @param createdAt         The timestamp when the record was created
     * @param updatedAt         The timestamp when the record was last updated
     */
    public Hospitalization(Integer hospitalizationId, Integer patientId, String departmentCode,
                           Integer wardNumber, Integer bedNumber, String diagnosis,
                           Integer doctorId, LocalDate admissionDate, LocalDate dischargeDate,
                           LocalDateTime createdAt, LocalDateTime updatedAt) {
        this.hospitalizationId = hospitalizationId;
        this.patientId = patientId;
        this.departmentCode = departmentCode;
        this.wardNumber = wardNumber;
        this.bedNumber = bedNumber;
        this.diagnosis = diagnosis;
        this.doctorId = doctorId;
        this.admissionDate = admissionDate;
        this.dischargeDate = dischargeDate;
        this.createdAt = createdAt;
        this.updatedAt = updatedAt;
    }


    public Integer getHospitalizationId() {
        return hospitalizationId;
    }


    public void setHospitalizationId(Integer hospitalizationId) {
        this.hospitalizationId = hospitalizationId;
    }


    public Integer getPatientId() {
        return patientId;
    }


    public void setPatientId(Integer patientId) {
        this.patientId = patientId;
    }

    public String getDepartmentCode() {
        return departmentCode;
    }


    public void setDepartmentCode(String departmentCode) {
        this.departmentCode = departmentCode;
    }


    public Integer getWardNumber() {
        return wardNumber;
    }

    public void setWardNumber(Integer wardNumber) {
        this.wardNumber = wardNumber;
    }


    public Integer getBedNumber() {
        return bedNumber;
    }

    /**
     * Sets the bed number assigned to the patient.
     *
     * @param bedNumber The bed number
     */
    public void setBedNumber(Integer bedNumber) {
        this.bedNumber = bedNumber;
    }


    public String getDiagnosis() {
        return diagnosis;
    }


    public void setDiagnosis(String diagnosis) {
        this.diagnosis = diagnosis;
    }

    /**
     * Gets the ID of the doctor treating the patient.
     *
     * @return The doctor ID
     */
    public Integer getDoctorId() {
        return doctorId;
    }


    public void setDoctorId(Integer doctorId) {
        this.doctorId = doctorId;
    }


    public LocalDate getAdmissionDate() {
        return admissionDate;
    }

    /**
     * Sets the date when the patient was admitted.
     *
     * @param admissionDate The admission date
     */
    public void setAdmissionDate(LocalDate admissionDate) {
        this.admissionDate = admissionDate;
    }

    /**
     * Gets the date when the patient was discharged.
     *
     * @return The discharge date (null if still hospitalized)
     */
    public LocalDate getDischargeDate() {
        return dischargeDate;
    }

    /**
     * Sets the date when the patient was discharged.
     *
     * @param dischargeDate The discharge date (null if still hospitalized)
     */
    public void setDischargeDate(LocalDate dischargeDate) {
        this.dischargeDate = dischargeDate;
    }

    /**
     * Gets the timestamp when the record was created.
     *
     * @return The creation timestamp
     */
    public LocalDateTime getCreatedAt() {
        return createdAt;
    }

    /**
     * Sets the timestamp when the record was created.
     *
     * @param createdAt The creation timestamp
     */
    public void setCreatedAt(LocalDateTime createdAt) {
        this.createdAt = createdAt;
    }

    /**
     * Gets the timestamp when the record was last updated.
     *
     * @return The update timestamp
     */
    public LocalDateTime getUpdatedAt() {
        return updatedAt;
    }

    /**
     * Sets the timestamp when the record was last updated.
     *
     * @param updatedAt The update timestamp
     */
    public void setUpdatedAt(LocalDateTime updatedAt) {
        this.updatedAt = updatedAt;
    }

    public boolean isCurrentlyHospitalized() {
        return dischargeDate == null;
    }


    public String getWardId() {
        return departmentCode + "-" + wardNumber;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Hospitalization that = (Hospitalization) o;
        return Objects.equals(hospitalizationId, that.hospitalizationId);
    }

    @Override
    public int hashCode() {
        return Objects.hash(hospitalizationId);
    }

    @Override
    public String toString() {
        return "Hospitalization{" +
                "hospitalizationId=" + hospitalizationId +
                ", patientId=" + patientId +
                ", departmentCode='" + departmentCode + '\'' +
                ", wardNumber=" + wardNumber +
                ", bedNumber=" + bedNumber +
                ", diagnosis='" + diagnosis + '\'' +
                ", doctorId=" + doctorId +
                ", admissionDate=" + admissionDate +
                ", dischargeDate=" + dischargeDate +
                '}';
    }
}