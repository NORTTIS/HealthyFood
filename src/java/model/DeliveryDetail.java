/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author Norttie
 */
public class DeliveryDetail {
    private String deliveryId;
    private String orderId;
    private String fullname;
    private String email;
    private String phone;
    private String address;
    private String note;
    private String voucher;

    public DeliveryDetail() {
    }

    public DeliveryDetail(String deliveryId, String orderId, String fullname, String email, String phone, String address, String note, String voucher) {
        this.deliveryId = deliveryId;
        this.orderId = orderId;
        this.fullname = fullname;
        this.email = email;
        this.phone = phone;
        this.address = address;
        this.note = note;
         this.voucher = voucher;
    }
    public DeliveryDetail( String orderId, String fullname, String email, String phone, String address, String note) {
        this.orderId = orderId;
        this.fullname = fullname;
        this.email = email;
        this.phone = phone;
        this.address = address;
        this.note = note;
    }

    public String getDeliveryId() {
        return deliveryId;
    }

    public void setDeliveryId(String deliveryId) {
        this.deliveryId = deliveryId;
    }

    public String getOrderId() {
        return orderId;
    }

    public void setOrderId(String orderId) {
        this.orderId = orderId;
    }

    public String getFullname() {
        return fullname;
    }

    public void setFullname(String fullname) {
        this.fullname = fullname;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }

    public String getVoucher() {
        return voucher;
    }

    public void setVoucher(String voucher) {
        this.voucher = voucher;
    }

    @Override
    public String toString() {
        return "DeliveryDetail{" + "deliveryId=" + deliveryId + ", orderId=" + orderId + ", fullname=" + fullname + ", email=" + email + ", phone=" + phone + ", address=" + address + ", note=" + note + ", voucher=" + voucher + '}';
    }
    
  
    
    
}
