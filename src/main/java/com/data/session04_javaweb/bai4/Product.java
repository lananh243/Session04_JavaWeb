package com.data.session04_javaweb.bai4;

public class Product {
    private int id;
    private String name;
    private Float price;
    private String description;

    public Product(int id, String name, Float price, String description) {
        this.id = id;
        this.name = name;
        this.price = price;
        this.description = description;
    }

    public int getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public Float getPrice() {
        return price;
    }

    public String getDescription() {
        return description;
    }
}
