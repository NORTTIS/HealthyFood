/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.util.ArrayList;


/**
 *
 * @author Norttie
 */
public class Cart {
    private ArrayList<LineItem> items;

    public Cart() {
        items = new ArrayList<>();
    }

    public ArrayList<LineItem> getItems() {
        return items;
    }

    public int getCount() {
        return items.size();
    }

    public void addItem(LineItem item) {
        int id = item.getProduct().getProductId();
        int quantity = item.getQuantity();
        for (LineItem cartItem : items) {
            if (cartItem.getProduct().getProductId()==id) {
                if(cartItem.getQuantity()!=quantity){
                cartItem.setQuantity(quantity);
                }
                return;
            }
        }
        items.add(item);
    }

//    public void removeItem(LineItem item) {
//        int id = item.getProduct().getProductId();
//        for (int i = 0; i < items.size(); i++) {
//            LineItem lineItem = items.get(i);
//            if (lineItem.getProduct().getProductId()==id ) {
//                items.remove(i);
//                return;
//            }
//        }
//    }
}