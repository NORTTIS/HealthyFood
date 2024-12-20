/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author Norttie
 */
public class Products {

    private int productId;
    private String name;
    private String supplier;
    private String description;
    private double price;
    private int category;
    private int quantityInStock;
    private String status;
    private double averageCalories;
    private String picture;
    private double rate;

    // Constructor
    public Products(int productId, int category, String supplier,String name,String description, double price, int quantityInStock, String status, double averageCalories, String picture) {
        this.productId = productId;
        this.name = name;
        this.supplier = supplier;
        this.description = description;
        this.price = price;
        this.category = category;
        this.quantityInStock = quantityInStock;
        this.status = status;
        this.averageCalories = averageCalories;
        this.picture = picture;
    }

    // Getters and Setters
    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSupplier() {
        return supplier;
    }

    public void setSupplier(String supplier) {
        this.supplier = supplier;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getPrice() {
        int prices = (int)price;
        return prices;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public int getCategory() {
        return category;
    }

    public void setCategory(int category) {
        this.category = category;
    }

    public int getQuantityInStock() {
        return quantityInStock;
    }

    public void setQuantityInStock(int quantityInStock) {
        this.quantityInStock = quantityInStock;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public double getAverageCalories() {
        return averageCalories;
    }

    public void setAverageCalories(double averageCalories) {
        this.averageCalories = averageCalories;
    }

    public String getPicture() {
        return picture;
    }

    public void setPicture(String picture) {
        this.picture = picture;
    }

    public double getRate() {
        return rate;
    }

    public void setRate(double rate) {
        this.rate = rate;
    }
    
    

    @Override
    public String toString() {
        return "Products{" + "productId=" + productId + ", name=" + name + ", supplier=" + supplier + ", description=" + description + ", price=" + price + ", category=" + category + ", quantityInStock=" + quantityInStock + ", status=" + status + ", averageCalories=" + averageCalories + ", picture=" + picture + '}';
    }

}
