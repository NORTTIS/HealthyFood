/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.util.Date;

/**
 *
 * @author Norttie
 */
public class Messages {
    private int id;
    private int sender_id;
    private int receive_id;
    private String message;
    private Date time;

    public Messages() {
    }

    public Messages(int id, int sender_id, int receive_id, String message, Date time) {
        this.id = id;
        this.sender_id = sender_id;
        this.receive_id = receive_id;
        this.message = message;
        this.time = time;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getSender_id() {
        return sender_id;
    }

    public void setSender_id(int sender_id) {
        this.sender_id = sender_id;
    }

    public int getReceive_id() {
        return receive_id;
    }

    public void setReceive_id(int receive_id) {
        this.receive_id = receive_id;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }

    @Override
    public String toString() {
        return "Messages{" + "id=" + id + ", sender_id=" + sender_id + ", receive_id=" + receive_id + ", message=" + message + ", time=" + time + '}';
    }
    
    
    
    
}
