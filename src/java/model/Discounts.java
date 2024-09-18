/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;
public class Discounts {

    private String name;
    private String value;
    private int amounts;

    public Discounts(String name, String value, int amounts) {
        this.name = name;
        this.value = value;
        this.amounts = amounts;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getValue() {
        return value;
    }

    public void setValue(String value) {
        this.value = value;
    }

    public int getAmounts() {
        return amounts;
    }

    public void setAmounts(int amounts) {
        this.amounts = amounts;
    }


}
