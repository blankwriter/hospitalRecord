package main.java.hospital.model;

import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.util.Objects;

/**
 * Represents a nurse in the HealthTrack System.
 * Extends the Employee class.
 */
public class Nurse extends Employee {
    private String rotation;
    private BigDecimal salary;
    private String departmentCode;

    /**
     * Default constructor
     */
    public Nurse() {
        super();
    }

    /**
     * Constructor with required fields
     *
     * @param firstName      The nurse's first name
     * @param surname        The nurse's surname
     * @param address        The nurse's address
     * @param phone          The nurse's phone number
     * @param rotation       The nurse's rotation (e.g., "Morning", "Evening", "Night")
     * @param salary         The nurse's salary
     * @param departmentCode The code of the department the nurse is assigned to
     */
    public Nurse(String firstName, String surname, String address, String phone,
                 String rotation, BigDecimal salary, String departmentCode) {
        super(firstName, surname, address, phone);
        this.rotation = rotation;
        this.salary = salary;
        this.departmentCode = departmentCode;
    }

    /**
     * Full constructor
     *
     * @param employeeId     The nurse's employee ID
     * @param firstName      The nurse's first name
     * @param surname        The nurse's surname
     * @param address        The nurse's address
     * @param phone          The nurse's phone number
     * @param rotation       The nurse's rotation
     * @param salary         The nurse's salary
     * @param departmentCode The code of the department the nurse is assigned to
     * @param createdAt      The timestamp when the record was created
     * @param updatedAt      The timestamp when the record was last updated
     */
    public Nurse(Integer employeeId, String firstName, String surname, String address, String phone,
                 String rotation, BigDecimal salary, String departmentCode,
                 LocalDateTime createdAt, LocalDateTime updatedAt) {
        super(employeeId, firstName, surname, address, phone, createdAt, updatedAt);
        this.rotation = rotation;
        this.salary = salary;
        this.departmentCode = departmentCode;
    }


    public String getRotation() {
        return rotation;
    }


    public void setRotation(String rotation) {
        this.rotation = rotation;
    }


    public BigDecimal getSalary() {
        return salary;
    }


    public void setSalary(BigDecimal salary) {
        this.salary = salary;
    }


    public String getDepartmentCode() {
        return departmentCode;
    }


    public void setDepartmentCode(String departmentCode) {
        this.departmentCode = departmentCode;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        if (!super.equals(o)) return false;
        Nurse nurse = (Nurse) o;
        return Objects.equals(rotation, nurse.rotation) &&
                Objects.equals(salary, nurse.salary) &&
                Objects.equals(departmentCode, nurse.departmentCode);
    }

    @Override
    public int hashCode() {
        return Objects.hash(super.hashCode(), rotation, salary, departmentCode);
    }

    @Override
    public String toString() {
        return "Nurse{" +
                "employeeId=" + getEmployeeId() +
                ", firstName='" + getFirstName() + '\'' +
                ", surname='" + getSurname() + '\'' +
                ", rotation='" + rotation + '\'' +
                ", salary=" + salary +
                ", departmentCode='" + departmentCode + '\'' +
                '}';
    }
}