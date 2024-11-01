/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.sql.Timestamp;

/**
 *
 * @author Norttie
 */
public class Messages {

    private int id;
    private int sender_id;
    private int receive_id;
    private String message;
    private Timestamp time;

    public Messages() {
    }

    public Messages(int id, int sender_id, int receive_id, String message, Timestamp time) {
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

    public String getTime() {
        // Chuyển đổi từ Timestamp sang LocalDateTime
        LocalDateTime localDateTime = time != null ? time.toLocalDateTime() : null;
        if (localDateTime != null) {
            DateTimeFormatter formatter = DateTimeFormatter.ofPattern("hh:mm a"); // Định dạng giờ
            return localDateTime.format(formatter);
        }
        return null; // Hoặc bạn có thể trả về một giá trị mặc định nào đó
    }

    public void setTime(Timestamp time) {
        this.time = time;
    }

    @Override
    public String toString() {
        return "Messages{" + "id=" + id + ", sender_id=" + sender_id + ", receive_id=" + receive_id + ", message=" + message + ", time=" + getTime() + '}';
    }

}
