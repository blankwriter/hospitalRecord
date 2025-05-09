package main.java.hospital.model;

import java.time.LocalDateTime;
import java.util.Objects;

/**
 * Represents a ward in the HealthTrack System.
 * A ward belongs to a department and is supervised by a nurse.
 */
public class Ward {
    private String departmentCode;
    private Integer wardNumber;
    private Integer bedCount;
    private Integer supervisorId;
    private LocalDateTime createdAt;
    private LocalDateTime updatedAt;

    /**
     * Default constructor
     */
    public Ward() {
    }

    /**
     * Constructor with required fields
     *
     * @param departmentCode The code of the department the ward belongs to
     * @param wardNumber     The ward number (local to the department)
     * @param bedCount       The number of beds in the ward
     * @param supervisorId   The ID of the nurse who supervises the ward
     */
    public Ward(String departmentCode, Integer wardNumber, Integer bedCount, Integer supervisorId) {
        this.departmentCode = departmentCode;
        this.wardNumber = wardNumber;
        this.bedCount = bedCount;
        this.supervisorId = supervisorId;
    }

    /**
     * Full constructor
     *
     * @param departmentCode The code of the department the ward belongs to
     * @param wardNumber     The ward number (local to the department)
     * @param bedCount       The number of beds in the ward
     * @param supervisorId   The ID of the nurse who supervises the ward
     * @param createdAt      The timestamp when the record was created
     * @param updatedAt      The timestamp when the record was last updated
     */
    public Ward(String departmentCode, Integer wardNumber, Integer bedCount, Integer supervisorId,
                LocalDateTime createdAt, LocalDateTime updatedAt) {
        this.departmentCode = departmentCode;
        this.wardNumber = wardNumber;
        this.bedCount = bedCount;
        this.supervisorId = supervisorId;
        this.createdAt = createdAt;
        this.updatedAt = updatedAt;
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


    public Integer getBedCount() {
        return bedCount;
    }


    public void setBedCount(Integer bedCount) {
        this.bedCount = bedCount;
    }


    public Integer getSupervisorId() {
        return supervisorId;
    }

    public void setSupervisorId(Integer supervisorId) {
        this.supervisorId = supervisorId;
    }


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


    public String getWardId() {
        return departmentCode + "-" + wardNumber;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Ward ward = (Ward) o;
        return Objects.equals(departmentCode, ward.departmentCode) &&
                Objects.equals(wardNumber, ward.wardNumber);
    }

    @Override
    public int hashCode() {
        return Objects.hash(departmentCode, wardNumber);
    }

    @Override
    public String toString() {
        return "Ward{" +
                "departmentCode='" + departmentCode + '\'' +
                ", wardNumber=" + wardNumber +
                ", bedCount=" + bedCount +
                ", supervisorId=" + supervisorId +
                '}';
    }
}