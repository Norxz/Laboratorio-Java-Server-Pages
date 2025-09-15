package com.laboratoriojavaserverpages.beans;

import java.io.Serializable;
import java.time.LocalDate;
import java.time.Period;

public class StudentBean implements Serializable {
    private String name;
    private String birthDate;

    public StudentBean() {}

    public String getName() { return name; }
    public void setName(String name) { this.name = (name != null) ? name.trim() : null; }


    public String getBirthDate() { return birthDate; }
    public void setBirthDate(String birthDateStr) {
        this.birthDate = (birthDateStr == null || birthDateStr.trim().isEmpty())
                ? null
                : birthDateStr.trim();
    }

    public int getAge() {
        try {
            if (birthDate == null) return -1;
            LocalDate bd = LocalDate.parse(birthDate); // yyyy-MM-dd
            return Period.between(bd, LocalDate.now()).getYears();
        } catch (Exception e) {
            return -1;
        }
    }
}
