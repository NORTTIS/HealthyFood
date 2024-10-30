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

    public Map<String, Map<String, List<Menu>>> getAllMenu(int id) {
        Map<String, Map<String, List<Menu>>> menuMap = new HashMap<>();

        String sql = "select * from Menu where create_by = ?";

        try (PreparedStatement st = connection.prepareStatement(sql)) {
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();

            while (rs.next()) {
                String name = rs.getString("name");
                String key = rs.getString("menuTitle") + " - " + rs.getString("status");
                // Tạo đối tượng Menu từ ResultSet
                Menu m = new Menu(
                        rs.getInt("menu_id"),
                        rs.getInt("type_id"),
                        name,
                        rs.getString("description"),
                        rs.getInt("create_by"),
                        rs.getString("menu_name"),
                        rs.getFloat("average_calories"),
                        rs.getString("status"),
                        rs.getString("menuTitle")
                );

                //Kiểm tra xem weightSituation đã có trong menuMap chưa
                if (!menuMap.containsKey(key)) {
                    //Thêm một Map rỗng vào cho `name` nếu chưa có
                    menuMap.put(key, new HashMap<>());
                }

                // Lấy Map của `name` từ menuMap
                Map<String, List<Menu>> nameMap = menuMap.get(key);

                // Kiểm tra xem name đã có trong nameMap chưa
                if (!nameMap.containsKey(name)) {
                    // Nếu chưa có, thêm một danh sách rỗng vào cho các Menu
                    nameMap.put(name, new ArrayList<>());
                }

                // Thêm đối tượng Menu vào danh sách tương ứng với `name`
                nameMap.get(name).add(m);
            }
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }

        return menuMap;
    }
    
    public Map<String, Map<String, List<Menu>>> seeAllMenu() {
        Map<String, Map<String, List<Menu>>> menuMap = new HashMap<>();

        String sql = "select * from Menu m join Accounts a on m.create_by = a.account_id";

        try (PreparedStatement st = connection.prepareStatement(sql)) {
            ResultSet rs = st.executeQuery();

            while (rs.next()) {
                String name = rs.getString("name");
                String key = rs.getString("menuTitle") + " - " + rs.getString("displayname") + " - "+ rs.getString("status");
                // Tạo đối tượng Menu từ ResultSet
                Menu m = new Menu(
                        rs.getInt("menu_id"),
                        rs.getInt("type_id"),
                        name,
                        rs.getString("description"),
                        rs.getInt("create_by"),
                        rs.getString("menu_name"),
                        rs.getFloat("average_calories"),
                        rs.getString("status"),
                        rs.getString("menuTitle")
                );

                //Kiểm tra xem weightSituation đã có trong menuMap chưa
                if (!menuMap.containsKey(key)) {
                    //Thêm một Map rỗng vào cho `name` nếu chưa có
                    menuMap.put(key, new HashMap<>());
                }

                // Lấy Map của `name` từ menuMap
                Map<String, List<Menu>> nameMap = menuMap.get(key);

                // Kiểm tra xem name đã có trong nameMap chưa
                if (!nameMap.containsKey(name)) {
                    // Nếu chưa có, thêm một danh sách rỗng vào cho các Menu
                    nameMap.put(name, new ArrayList<>());
                }

                // Thêm đối tượng Menu vào danh sách tương ứng với `name`
                nameMap.get(name).add(m);
            }
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }

        return menuMap;
    }

    public Map<String, Map<String, List<Menu>>> getMenuByStatus(int id, String status) {
        Map<String, Map<String, List<Menu>>> menuMap = new HashMap<>();

        String sql = "select * from Menu where create_by = ? and status = ?";

        try (PreparedStatement st = connection.prepareStatement(sql)) {
            st.setInt(1, id);
            st.setString(2, status);
            ResultSet rs = st.executeQuery();

            while (rs.next()) {
                String name = rs.getString("name");
                String key = rs.getString("menuTitle") + " - " + rs.getString("status");
                // Tạo đối tượng Menu từ ResultSet
                Menu m = new Menu(
                        rs.getInt("menu_id"),
                        rs.getInt("type_id"),
                        name,
                        rs.getString("description"),
                        rs.getInt("create_by"),
                        rs.getString("menu_name"),
                        rs.getFloat("average_calories"),
                        rs.getString("status"),
                        rs.getString("menuTitle")
                );

                //Kiểm tra xem weightSituation đã có trong menuMap chưa
                if (!menuMap.containsKey(key)) {
                    //Thêm một Map rỗng vào cho `name` nếu chưa có
                    menuMap.put(key, new HashMap<>());
                }

                // Lấy Map của `name` từ menuMap
                Map<String, List<Menu>> nameMap = menuMap.get(key);

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
    
    public Map<String, Map<String, List<Menu>>> allMenuStatus(String status) {
        Map<String, Map<String, List<Menu>>> menuMap = new HashMap<>();

        String sql = "select * from Menu where status = ?";

        try (PreparedStatement st = connection.prepareStatement(sql)) {
            st.setString(1, status);
            ResultSet rs = st.executeQuery();

            while (rs.next()) {
                String name = rs.getString("name");
                String key = rs.getString("menuTitle") + " - " + rs.getString("status");
                // Tạo đối tượng Menu từ ResultSet
                Menu m = new Menu(
                        rs.getInt("menu_id"),
                        rs.getInt("type_id"),
                        name,
                        rs.getString("description"),
                        rs.getInt("create_by"),
                        rs.getString("menu_name"),
                        rs.getFloat("average_calories"),
                        rs.getString("status"),
                        rs.getString("menuTitle")
                );

                //Kiểm tra xem weightSituation đã có trong menuMap chưa
                if (!menuMap.containsKey(key)) {
                    //Thêm một Map rỗng vào cho `name` nếu chưa có
                    menuMap.put(key, new HashMap<>());
                }

                // Lấy Map của `name` từ menuMap
                Map<String, List<Menu>> nameMap = menuMap.get(key);

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

    public Map<String, Map<String, List<Menu>>> getMenuByType(int type) {
        Map<String, Map<String, List<Menu>>> menuMap = new HashMap<>();

        String sql = "select * from Menu where type_id = ? and status = 'Accept'";

        try (PreparedStatement st = connection.prepareStatement(sql)) {
            st.setInt(1, type);
            ResultSet rs = st.executeQuery();

            while (rs.next()) {
                String name = rs.getString("name");
                String key = rs.getString("menuTitle");
                // Tạo đối tượng Menu từ ResultSet
                Menu m = new Menu(
                        rs.getInt("menu_id"),
                        rs.getInt("type_id"),
                        name,
                        rs.getString("description"),
                        rs.getInt("create_by"),
                        rs.getString("menu_name"),
                        rs.getFloat("average_calories"),
                        rs.getString("status"),
                        rs.getString("menuTitle")
                );

                //Kiểm tra xem weightSituation đã có trong menuMap chưa
                if (!menuMap.containsKey(key)) {
                    //Thêm một Map rỗng vào cho `name` nếu chưa có
                    menuMap.put(key, new HashMap<>());
                }

                // Lấy Map của `name` từ menuMap
                Map<String, List<Menu>> nameMap = menuMap.get(key);

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

    public List<String> getTypeList() {
        String sql = "select type_name from Customer_Type";
        List<String> typeList = new ArrayList<>();
        try (PreparedStatement st = connection.prepareStatement(sql)) {
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                typeList.add(rs.getString("type_name"));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return typeList;
    }

    public String getTypeByTypeID(int id) {
        String sql = "select * from Customer_Type";
        String type = "";
        try (PreparedStatement st = connection.prepareStatement(sql)) {
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                if (id == rs.getInt("type_id")) {
                    type = rs.getString("type_name");
                }
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return type;
    }

    public void insertNewMenu(String menuTitle, int type_id, String name, String description, int create_by, String menu_name, float average_calories) {
        String sql1 = "insert into Menu(type_id, name, description, create_by, menu_name, average_calories, menuTitle) values (?, ?, ?, ?, ?, ?, ?);";
        try (PreparedStatement st = connection.prepareStatement(sql1)) {
            st.setInt(1, type_id);
            st.setString(2, name);
            st.setString(3, description);
            st.setInt(4, create_by);
            st.setString(5, menu_name);
            st.setFloat(6, average_calories);
            st.setString(7, menuTitle);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public void deleteMenu(int firstID, int lastID) {
        String sql = "delete Menu where menu_id between ? and ?";
        try (PreparedStatement st = connection.prepareStatement(sql)) {
            st.setInt(1, firstID);
            st.setInt(2, lastID);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public void updateMenuById(int menu_id, int type_id, String name, String description, String menu_name, float average_calories, String menuTitle) {
        String sql = "update Menu set type_id = ?, name = ?, description = ?, menu_name= ?, status='In Process', average_calories = ?, menuTitle = ? where menu_id = ?";
        try (PreparedStatement st = connection.prepareStatement(sql)) {
            st.setInt(1, type_id);
            st.setString(2, name);
            st.setString(3, description);
            st.setString(4, menu_name);
            st.setFloat(5, average_calories);
            st.setString(6, menuTitle);
            st.setInt(7, menu_id);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }
    
    public void rejectMenu(int firstId, int lastId, String description) {
        String sql = "update Menu set description = ?, status='Reject' where menu_id between ? and ?";
        try (PreparedStatement st = connection.prepareStatement(sql)) {
            st.setString(1, description);
            st.setInt(2, firstId);
            st.setInt(3, lastId);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public static void main(String[] args) {
        NutriDAO ndb = new NutriDAO();
        Map<String, Map<String, List<Menu>>> ml = ndb.getAllMenu(4);
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
                    System.out.println(menu.getAverage_calories());
                }
            }
        }
    }
}
