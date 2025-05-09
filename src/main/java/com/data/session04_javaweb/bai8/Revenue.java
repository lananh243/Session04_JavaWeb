package com.data.session04_javaweb.bai8;

public class Revenue {
    private String month;
    private double revenue;

    public Revenue(String month, double revenue) {
        this.month = month;
        this.revenue = revenue;
    }

    public String getMonth() {
        return month;
    }

    public double getRevenue() {
        return revenue;
    }
}
