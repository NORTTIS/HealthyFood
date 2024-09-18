/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

public class Accounts {

    private int account_id;
    private String username;
    private String password;
    private String email;
    private String phone_number;
    private String role;
    private String status;

    public Accounts() {
    }

    public Accounts(int account_id, String username, String password, String email, String phone_number, String role, String status) {
        this.account_id = account_id;
        this.username = username;
        this.password = password;
        this.email = email;
        this.phone_number = phone_number;
        this.role = role;
        this.status = status;
    }

    public int getAccount_id() {
        return account_id;
    }

    public void setAccount_id(int account_id) {
        this.account_id = account_id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone_number() {
        return phone_number;
    }

    public void setPhone_number(String phone_number) {
        this.phone_number = phone_number;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "Accounts{" + "account_id=" + account_id + ", username=" + username + ", password=" + password + ", email=" + email + ", phone_number=" + phone_number + ", role=" + role + ", status=" + status + '}';
    }
}
