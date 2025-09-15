package com.laboratoriojavaserverpages.beans;

import java.io.Serializable;
import java.time.LocalDate;
import java.time.Period;

public class StudentBean implements Serializable {
    private String name;
    private LocalDate birthDate;

    public StudentBean() {}

    public String getName() { return name; }
    public void setName(String name) { this.name = (name != null) ? name.trim() : null; }

    public LocalDate getBirthDate() { return birthDate; }
    public void setBirthDate(String birthDateStr) {
        if (birthDateStr == null || birthDateStr.trim().isEmpty()) {
            this.birthDate = null;
        } else {
            this.birthDate = LocalDate.parse(birthDateStr.trim());
        }
    }

    public int getAge() {
        if (birthDate == null) return -1;
        return Period.between(birthDate, LocalDate.now()).getYears();
    }
}
