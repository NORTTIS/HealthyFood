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
public class Reviews {

    private String review_id;
    private String author;
    private String product_id;
    private String comment;
    private double rate;
    private Date createAt;

    public Reviews() {
    }

    public Reviews(String review_id, String author, String product_id, String comment, double rate, Date createAt) {
        this.review_id = review_id;
        this.author = author;
        this.product_id = product_id;
        this.comment = comment;
        this.rate = rate;
        this.createAt = createAt;
    }

    public String getReview_id() {
        return review_id;
    }

    public void setReview_id(String review_id) {
        this.review_id = review_id;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getProduct_id() {
        return product_id;
    }

    public void setProduct_id(String product_id) {
        this.product_id = product_id;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }

    public double getRate() {
        return rate;
    }

    public void setRate(double rate) {
        this.rate = rate;
    }

    public String getCreateAt() {
       // Định dạng ngày tháng năm
        SimpleDateFormat dateFormat = new SimpleDateFormat("dd-MM-yyyy");
        String formattedDate = dateFormat.format(createAt);
        return formattedDate;
    }

    public void setCreateAt(Date createAt) {
        this.createAt = createAt;
    }

    @Override
    public String toString() {
        return "Reviews{" + "review_id=" + review_id + ", author=" + author + ", product_id=" + product_id + ", comment=" + comment + ", rate=" + rate + ", createAt=" + createAt + '}';
    }
    
    
}
