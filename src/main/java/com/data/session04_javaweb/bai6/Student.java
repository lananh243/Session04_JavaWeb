package com.data.session04_javaweb.bai6;

public class Student {
    private int id;
    private String name;
    private int age;
    private double average;

    public Student(int id, String name, int age, double average) {
        this.id = id;
        this.name = name;
        this.age = age;
        this.average = average;
    }

    public int getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public int getAge() {
        return age;
    }

    public double getAverage() {
        return average;
    }
}
