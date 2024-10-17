/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import java.util.ArrayList;
import java.util.List;
import java.sql.*;
import java.util.HashMap;
import java.util.Map;
import model.Menu;

/**
 *
 * @author Minh
 */
public class NutriDAO extends DBContext {

    public Map<String, Map<String, List<Menu>>> getMenuMap(int id) {
        Map<String, Map<String, List<Menu>>> menuMap = new HashMap<>();

        String sql = "select * from Menu m join Menu_Detail md on m.menu_id = md.menu_detail_id where create_by = ?";

        try (PreparedStatement st = connection.prepareStatement(sql)) {
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();

            while (rs.next()) {
                //kiểm tra type
                int type = rs.getInt("type_id");
                String name = rs.getString("name");
                String weightSituation = "";
                if (type == 1){
                    weightSituation = "Underweight";
                } else {
                    weightSituation = "Overweight";
                }
                // Tạo đối tượng Menu từ ResultSet
                Menu m = new Menu(
                        rs.getInt("menu_id"),
                        type,
                        name,
                        rs.getString("description"),
                        rs.getInt("create_by"),
                        rs.getString("menu_name"),
                        rs.getFloat("average_calories")
                );

                // Kiểm tra xem weightSituation đã có trong menuMap chưa
                if (!menuMap.containsKey(weightSituation)) {
                    // Nếu chưa có, thêm một Map rỗng vào cho `name`
                    menuMap.put(weightSituation, new HashMap<>());
                }

                // Lấy Map của `name` từ menuMap
                Map<String, List<Menu>> nameMap = menuMap.get(weightSituation);

                // Kiểm tra xem name đã có trong nameMap chưa
                if (!nameMap.containsKey(name)) {
                    // Nếu chưa có, thêm một danh sách rỗng vào cho các Menu
                    nameMap.put(name, new ArrayList<>());
                }

                // Thêm đối tượng Menu vào danh sách tương ứng với `name`
                nameMap.get(name).add(m);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }

        return menuMap;
    }

    public static void main(String[] args) {
        NutriDAO ndb = new NutriDAO();
        Map<String, Map<String, List<Menu>>> ml = ndb.getMenuMap(4);
        for (Map.Entry<String, Map<String, List<Menu>>> descriptionEntry : ml.entrySet()) {
            // Duyệt qua từng description
            String description = descriptionEntry.getKey();
            Map<String, List<Menu>> nameMap = descriptionEntry.getValue();

            System.out.println("Menu for " + description);

            // Duyệt qua từng name tương ứng với description
            for (Map.Entry<String, List<Menu>> nameEntry : nameMap.entrySet()) {
                String name = nameEntry.getKey();
                List<Menu> menuList = nameEntry.getValue();

                System.out.println("Name: " + name);

                // Duyệt qua danh sách các Menu tương ứng với name
                for (Menu menu : menuList) {
                    System.out.println(menu);
                }
            }
        }
    }
}
