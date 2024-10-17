/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import java.util.ArrayList;
import java.util.List;
import model.Menu;
import java.sql.*;
import java.util.HashMap;
import java.util.Map;

/**
 *
 * @author Minh
 */
public class NutriDAO extends DBContext {

    public Map<String, List<Menu>> getAllMenu(int id) {
        Map<String, List<Menu>> menuMap = new HashMap<>();
        String sql = "select * from Menu m join Menu_Detail md on m.menu_id = md.menu_detail_id where create_by = ?";
        try (PreparedStatement st = connection.prepareStatement(sql)) {
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Menu m = new Menu(
                        rs.getInt("menu_id"),
                        rs.getInt("type_id"),
                        rs.getString("name"),
                        rs.getString("description"),
                        rs.getInt("create_by"),
                        rs.getString("menu_name"),
                        rs.getFloat("average_calories")
                );
                if (menuMap.containsKey(rs.getString("name"))) {
                    menuMap.get(rs.getString("name")).add(m);
                } else {
                    // Nếu chưa có `name`, tạo một danh sách mới cho các `menu_name`
                    List<Menu> mList = new ArrayList<>();
                    mList.add(m);
                    menuMap.put(rs.getString("name"), mList);
                }
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return menuMap;
    }

    public static void main(String[] args) {
        NutriDAO ndb = new NutriDAO();
        Map<String, List<Menu>> ml = ndb.getAllMenu(4);
        for (List<Menu> m : ml.values()) {
            System.out.println(m);
        }
    }
}
