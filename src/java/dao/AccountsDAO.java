package dao;

import java.util.List;
import model.Accounts;
import java.sql.SQLException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class AccountsDAO extends DBContext {

    public List<Accounts> getAllUser() {
        String sql = "SELECT * FROM Accounts";
        List<Accounts> al = new ArrayList<>();
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Accounts a = new Accounts(
                        rs.getInt("account_id"),
                        rs.getString("username"),
                        rs.getString("password"),
                        rs.getString("email"),
                        rs.getString("phone_number"),
                        rs.getString("role"),
                        rs.getString("status")
                );
                al.add(a);
            }
        } catch (SQLException ex) {
            System.out.println(ex);
        }
        return al;
    }
    
    public Accounts getUser(String username){
        String sql = "SELECT * FROM Accounts WHERE username = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, username);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Accounts a = new Accounts(
                        rs.getInt("account_id"),
                        rs.getString("username"),
                        rs.getString("password"),
                        rs.getString("email"),
                        rs.getString("phone_number"),
                        rs.getString("role"),
                        rs.getString("status")
                );
                return a;
            }
        } catch (SQLException ex) {
            System.out.println(ex);
        }
        return null;
    }
    
    public Accounts getUserEmail(String email){
        String sql = "SELECT * FROM Accounts WHERE email = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, email);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Accounts a = new Accounts(
                        rs.getInt("account_id"),
                        rs.getString("username"),
                        rs.getString("password"),
                        rs.getString("email"),
                        rs.getString("phone_number"),
                        rs.getString("role"),
                        rs.getString("status")
                );
                return a;
            }
        } catch (SQLException ex) {
            System.out.println(ex);
        }
        return null;
    }

    public void changeStatus(String status, String username) {
        String sql = "UPDATE Accounts SET status = ? WHERE username = ?";
        String change_status = "";
        if (status.equals("Active")) {
            change_status = "Inactive";
        } else {
            change_status = "Active";
        }
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, change_status);
            st.setString(2, username);
            st.executeUpdate();
        } catch (SQLException ex) {
            System.out.println(ex);
        }
    }
    
    public void updateUser(String username, String email, String phone_number, String password, String olduser) {
        String sql = "UPDATE Accounts SET username = ?, email = ?, phone_number = ?, String password = ? WHERE username = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, username);
            st.setString(2, email);
            st.setString(3, phone_number);
            st.setString(4, password);
            st.setString(5, olduser);
            st.executeUpdate();
        } catch (SQLException ex) {
            System.out.println(ex);
        }
    }

    public List<Accounts> getsearchManager(String username, String search) {
        String sql = "SELECT * FROM Accounts WHERE username = ? LIKE search";
        List<Accounts> managers = new ArrayList<>();
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, username);
            st.setString(2, "%" + search + "%");

            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Accounts a = new Accounts(
                        rs.getInt("account_id"),
                        rs.getString("username"),
                        rs.getString("password"),
                        rs.getString("email"),
                        rs.getString("phone_number"),
                        rs.getString("role"),
                        rs.getString("status")
                );
                managers.add(a);
            }
        } catch (SQLException ex) {
            System.out.println(ex);
        }
        return managers;
    }

    public List<Accounts> getAllManagers() {
        String sql = "select * from Accounts where role = 'Manager'";
        List<Accounts> managers = new ArrayList<>();
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Accounts a = new Accounts(
                        rs.getInt("account_id"),
                        rs.getString("username"),
                        rs.getString("password"),
                        rs.getString("email"),
                        rs.getString("phone_number"),
                        rs.getString("role"),
                        rs.getString("status")
                );
                managers.add(a);
            }
        } catch (SQLException ex) {
            System.out.println(ex);
        }
        return managers;
    }

    public void createManager(String username, String password, String email, String phone_number, String role, String status) {
        String sql = "insert into Accounts values (?, ?, ?, ?, ?, ?)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, username);
            st.setString(2, password);
            st.setString(3, email);
            st.setString(4, phone_number);
            st.setString(5, role);
            st.setString(6, status);
            st.executeUpdate();
        } catch (SQLException ex) {
            System.out.println(ex);
        }
    }

    public boolean isUsernameExists(String username) {
        String sql = "SELECT COUNT(*) FROM Accounts WHERE username = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, username);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                return rs.getInt(1) > 0;
            }
        } catch (SQLException ex) {
            System.out.println(ex);
        }
        return false;
    }

    public void updateUser(String username, String email, String phone_number, String password) {
        
        String sql = "UPDATE Accounts SET username = ?, email = ?, phone_number = ?, password = ? WHERE username = ?";

        try (PreparedStatement st = connection.prepareStatement(sql)) {
            st.setString(1, username);
            st.setString(2, email);
            st.setString(3, phone_number);
            st.setString(4, password);
            st.setString(5, username);

            int rowsAffected = st.executeUpdate();
            if (rowsAffected > 0) {
                System.out.println("Cập nhật mã giảm giá thành công.");
            } else {
                System.out.println("Không tìm thấy người dùng với tên đăng nhập đã cho.");
            }
        } catch (SQLException ex) {
        }
    }

    public static void main(String[] args) {
        AccountsDAO adb = new AccountsDAO();
        List<Accounts> al = adb.getAllUser();
        for (Accounts a : al) {
            System.out.println(a.toString());
        }
    }

}
