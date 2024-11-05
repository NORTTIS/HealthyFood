/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author Minh
 */
public class Menu {

    private int menu_id;
    private int type_id;
    private String name;
    private String description;
    private int create_by;
    private String menu_name;
    private double average_calories;
    private String status;
    private String menuTitle;

    public Menu() {
    }

    public Menu(int menu_id, int type_id, String name, String description, int create_by, String menu_name, double average_calories, String status, String menuTitle) {
        this.menu_id = menu_id;
        this.type_id = type_id;
        this.name = name;
        this.description = description;
        this.create_by = create_by;
        this.menu_name = menu_name;
        this.average_calories = average_calories;
        this.status = status;
        this.menuTitle = menuTitle;
    }

    public int getMenu_id() {
        return menu_id;
    }

    public void setMenu_id(int menu_id) {
        this.menu_id = menu_id;
    }

    public int getType_id() {
        return type_id;
    }

    public void setType_id(int type_id) {
        this.type_id = type_id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getCreate_by() {
        return create_by;
    }

    public void setCreate_by(int create_by) {
        this.create_by = create_by;
    }

    public String getMenu_name() {
        return menu_name;
    }

    public void setMenu_name(String menu_name) {
        this.menu_name = menu_name;
    }

    public double getAverage_calories() {
        return average_calories;
    }

    public void setAverage_calories(double average_calories) {
        this.average_calories = average_calories;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getMenuTitle() {
        return menuTitle;
    }

    public void setMenuTitle(String menuTitle) {
        this.menuTitle = menuTitle;
    }

    
}
