/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.text.SimpleDateFormat;
import java.util.Date;

/**
 *
 * @author Norttie
 */
public class Order {
    private String orderId;
    private String author;
    private double ammount;
    private double totalCal; 
    private String status;
    private Date createAt;

    public Order() {
    }

    public Order(String orderId, String author, double ammount, String status,double totalCal , Date createAt) {
        this.orderId = orderId;
        this.author = author;
        this.ammount = ammount;
        this.totalCal = totalCal;
        this.status = status;
        this.createAt = createAt;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    

    public String getOrderId() {
        return orderId;
    }

    public void setOrderId(String orderId) {
        this.orderId = orderId;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public double getAmmount() {
        return ammount;
    }

    public void setAmmount(double ammount) {
        this.ammount = ammount;
    }

    public double getTotalCal() {
        return totalCal;
    }

    public void setTotalCal(double totalCal) {
        this.totalCal = totalCal;
    }

    public String getCreateAt() {
        // Định dạng ngày tháng năm
        SimpleDateFormat dateFormat = new SimpleDateFormat("dd-MM-yyyy");
        String formattedDate = dateFormat.format(createAt);
        return formattedDate;
    }

    public void setCraeteAt(Date createAt) {
        this.createAt = createAt;
    }

    @Override
    public String toString() {
        return "Order{" + "orderId=" + orderId + ", author=" + author + ", ammount=" + ammount + ", totalCal=" + totalCal + ", status=" + status + ", createAt=" + createAt + '}';
    }

    
    
}
