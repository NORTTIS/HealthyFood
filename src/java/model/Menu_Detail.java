/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author Minh
 */
public class Menu_Detail {
    private String menu_detail_id;
    private int product_id;
    private int menu_id;
    private int product_qty;
    private float averange_calories;

    public Menu_Detail() {
    }

    public Menu_Detail(String menu_detail_id, int product_id, int menu_id, int product_qty, float averange_calories) {
        this.menu_detail_id = menu_detail_id;
        this.product_id = product_id;
        this.menu_id = menu_id;
        this.product_qty = product_qty;
        this.averange_calories = averange_calories;
    }

    public String getMenu_detail_id() {
        return menu_detail_id;
    }

    public void setMenu_detail_id(String menu_detail_id) {
        this.menu_detail_id = menu_detail_id;
    }

    public int getProduct_id() {
        return product_id;
    }

    public void setProduct_id(int product_id) {
        this.product_id = product_id;
    }

    public int getMenu_id() {
        return menu_id;
    }

    public void setMenu_id(int menu_id) {
        this.menu_id = menu_id;
    }

    public int getProduct_qty() {
        return product_qty;
    }

    public void setProduct_qty(int product_qty) {
        this.product_qty = product_qty;
    }

    public float getAverange_calories() {
        return averange_calories;
    }

    public void setAverange_calories(float averange_calories) {
        this.averange_calories = averange_calories;
    }
    
    
}
