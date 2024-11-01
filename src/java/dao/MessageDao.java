/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Messages;


/**
 *
 * @author Norttie
 */
public class MessageDao extends DBContext {

    public void saveMessage(int senderId, int receiverId, String message)  {
        String sql = "INSERT INTO Messages (sender_id, receiver_id, message) VALUES (?, ?, ?)";
        try (PreparedStatement stmt = connection.prepareStatement(sql)){
            
            stmt.setInt(1, senderId);
            stmt.setInt(2, receiverId);
            stmt.setString(3, message);
            stmt.executeUpdate();
        } catch (SQLException ex) {
            System.out.println(ex);
        }
    }
    
    public List<Messages>  getMessagesByConversation(String senderId,String receiverId){
        String sql = "  SELECT * FROM Messages WHERE (sender_Id = ? AND receiver_Id = ?) OR (sender_Id = ? AND receiver_Id = ?)";
        List<Messages> lmes = new ArrayList<>();

        try (PreparedStatement stmt = connection.prepareStatement(sql)){
            

            stmt.setString(1, senderId);
            stmt.setString(2, receiverId);
            stmt.setString(3, receiverId);
             stmt.setString(4, senderId);
            ResultSet rs = stmt.executeQuery();
            while(rs.next()){
                 Messages mes = new Messages(
                         rs.getInt(1),
                         rs.getInt(2),
                         rs.getInt(3),
                         rs.getString(4),
                         rs.getTimestamp(5));
                 lmes.add(mes);
            }
        } catch (SQLException ex) {
            System.out.println(ex);
        }
        return lmes;
    }
    public static void main(String[] args) {
//        new MessageDao().saveMessage(1, 4, "hello");
         List<Messages> lmes = new MessageDao().getMessagesByConversation("1", "4");
         for (Messages lme : lmes) {
             System.out.println(lme);
        }
    }
}
