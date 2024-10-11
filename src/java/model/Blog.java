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
public class Blog {
    private int id;
    private String title;
    private String author;
    private int category;
    private String content;
    private String imagePath;
    private Date createAt;

    public Blog() {
    }

    public Blog( int id, String author , String title,int category, String content, Date createAt , String imagePath ) {
        this.id = id;
        this.title = title;
        this.author = author;
        this.content = content;
        this.imagePath = imagePath;
        this.createAt = createAt;
        this.category = category;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getImagePath() {
        return imagePath;
    }

    public void setImagePath(String imagePath) {
        this.imagePath = imagePath;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
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

    public int getCategory() {
        return category;
    }

    public void setCategory(int category) {
        this.category = category;
    }

    @Override
    public String toString() {
        return "Blog{" + "id=" + id + ", title=" + title + ", author=" + author + ", category=" + category + ", content=" + content + ", imagePath=" + imagePath + ", createAt=" + createAt + '}';
    }
 
   
    

   

  
}
