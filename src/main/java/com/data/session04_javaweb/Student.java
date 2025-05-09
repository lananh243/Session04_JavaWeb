package com.data.session04_javaweb;

public class Student {
    private int id;
    private String studentName;
    private double score;
    private String address;

    public Student(int id, String studentName, double score, String address) {
        this.id = id;
        this.studentName = studentName;
        this.score = score;
        this.address = address;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getStudentName() {
        return studentName;
    }

    public void setStudentName(String studentName) {
        this.studentName = studentName;
    }

    public double getScore() {
        return score;
    }

    public void setScore(double score) {
        this.score = score;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }
}
