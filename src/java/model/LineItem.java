/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;


/**
 *
 * @author Norttie
 */
public class LineItem {
    private Products product;
    private int quantity;

    public LineItem() {
    }

    public LineItem(Products product, int quantity) {
        this.product = product;
        this.quantity = quantity;
    }
    

    public void setProduct(Products p) {
        product = p;
    }

    public Products getProduct() {
        return product;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public int getQuantity() {
        return quantity;
    }

    public int getTotal() {
        double total = product.getPrice() * quantity;
        return (int)total;
    }
    public double getTotalCal() {
        double totalCal = product.getAverageCalories() * quantity;
        return totalCal;
    }

    @Override
    public String toString() {
        return "LineItem{" + "product=" + product + ", quantity=" + quantity + '}';
    }
    
}
