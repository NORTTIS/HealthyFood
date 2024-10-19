
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
                int row = 1;
                Accounts a = new Accounts(
                        rs.getInt(row++),
                        rs.getString(row++),
                        rs.getString(row++),
                        rs.getString(row++),
                        rs.getString(row++),
                        rs.getString(row++),
                        rs.getString(row++),
                        rs.getString(row++),
                        rs.getString(row++),
                        rs.getString(row++),
                        rs.getString(row++)
                        
                );
                al.add(a);
            }
        } catch (SQLException ex) {
            System.out.println(ex);
        }
        return al;
    }
    
    public Accounts getAccountByUserName(String username) {
        String sql = "Select * from Accounts where username =?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, username);
            ResultSet rs;
            rs = st.executeQuery();
            while (rs.next()) {
                int row = 1;
                Accounts a = new Accounts(
                        rs.getInt(row++),
                        rs.getString(row++),
                        rs.getString(row++),
                        rs.getString(row++),
                        rs.getString(row++),
                        rs.getString(row++),
                        rs.getString(row++),
                        rs.getString(row++),
                        rs.getString(row++),
                        rs.getString(row++),
                        rs.getString(row++)
                );
                return a;

            }
        } catch (SQLException e) {
            System.out.println("Error cannot get account");
            return null;
        }
        return null;
    }
     public Accounts getAccountByEmail(String email) {
        String sql = "Select * from Accounts where email =?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, email);
            ResultSet rs;
            rs = st.executeQuery();
            while (rs.next()) {
                int row = 1;
                Accounts a = new Accounts(
                        rs.getInt(row++),
                        rs.getString(row++),
                        rs.getString(row++),
                        rs.getString(row++),
                        rs.getString(row++),
                        rs.getString(row++),
                        rs.getString(row++),
                        rs.getString(row++),
                        rs.getString(row++),
                        rs.getString(row++),
                        rs.getString(row++)
                );
                return a;

            }
        } catch (SQLException e) {
            System.out.println("Error cannot get account");
            return null;
        }
        return null;
    }
    public void createAccount(String username, String password, String displayname,String email , String role) {
        String sql = "INSERT INTO Accounts  (username,password,displayname,email,avatar,role) values (?,?,?,?,?,?) ";
        String avatar = "Avatar.png";
        try (PreparedStatement st = connection.prepareStatement(sql)) {
            st.setString(1, username);
            st.setString(2, password);
            st.setString(3, displayname);
            st.setString(4, email);
            st.setString(5, avatar);
            st.setString(6, role);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println("Error while trying to sign up: " + e.getMessage());
        }
    }
    public List<Accounts> getAllAccountByRole(String role) {
        String sql = "SELECT * FROM Accounts where role = ?";
        List<Accounts> al = new ArrayList<>();
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1,role);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                int row = 1;
                Accounts a = new Accounts(
                        rs.getInt(row++),
                        rs.getString(row++),
                        rs.getString(row++),
                        rs.getString(row++),
                        rs.getString(row++),
                        rs.getString(row++),
                        rs.getString(row++),
                        rs.getString(row++),
                        rs.getString(row++),
                        rs.getString(row++),
                        rs.getString(row++)
                        
                );
                al.add(a);
            }
        } catch (SQLException ex) {
            System.out.println(ex);
        }
        return al;
    }
    
       public Accounts getAccountByid(String id) {
        String sql = "SELECT * FROM Accounts where account_id = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1,id);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                int row = 1;
                Accounts a = new Accounts(
                        rs.getInt(row++),
                        rs.getString(row++),
                        rs.getString(row++),
                        rs.getString(row++),
                        rs.getString(row++),
                        rs.getString(row++),
                        rs.getString(row++),
                        rs.getString(row++),
                        rs.getString(row++),
                        rs.getString(row++),
                        rs.getString(row++)
                        
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
                int row = 1;
                Accounts a = new Accounts(
                        rs.getInt(row++),
                        rs.getString(row++),
                        rs.getString(row++),
                        rs.getString(row++),
                        rs.getString(row++),
                        rs.getString(row++),
                        rs.getString(row++),
                        rs.getString(row++),
                        rs.getString(row++),
                        rs.getString(row++),
                        rs.getString(row++)
                        
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
                int row = 1;
                Accounts a = new Accounts(
                        rs.getInt(row++),
                        rs.getString(row++),
                        rs.getString(row++),
                        rs.getString(row++),
                        rs.getString(row++),
                        rs.getString(row++),
                        rs.getString(row++),
                        rs.getString(row++),
                        rs.getString(row++),
                        rs.getString(row++),
                        rs.getString(row++)
                        
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
                int row = 1;
                Accounts a = new Accounts(
                        rs.getInt(row++),
                        rs.getString(row++),
                        rs.getString(row++),
                        rs.getString(row++),
                        rs.getString(row++),
                        rs.getString(row++),
                        rs.getString(row++),
                        rs.getString(row++),
                        rs.getString(row++),
                        rs.getString(row++),
                        rs.getString(row++)
                        
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
    public Accounts login(String username, String password) {
        String sql = "SELECT * FROM Accounts WHERE username = ? AND password = ?";
        try (PreparedStatement st = connection.prepareStatement(sql)) {
            st.setString(1, username);
            st.setString(2, password);
            try (ResultSet rs = st.executeQuery()) {
                if (rs.next()) {
                    int row = 1;
                    Accounts acc = new Accounts(
                        rs.getInt(row++),
                        rs.getString(row++),
                        rs.getString(row++),
                        rs.getString(row++),
                        rs.getString(row++),
                        rs.getString(row++),
                        rs.getString(row++),
                        rs.getString(row++),
                        rs.getString(row++),
                        rs.getString(row++),
                        rs.getString(row++));
                    return acc;
                    
                }
            }
        } catch (SQLException e) {
            System.out.println("Error while trying to login: " + e.getMessage());
        }
        return null;
    }
    
    

    public static void main(String[] args) {
        AccountsDAO adb = new AccountsDAO();
//        List<Accounts> al = adb.getAllAccountByRole("Nutritionist");
//        for (Accounts a : al) {
//            System.out.println(a.toString());
//        }
//         adb.login("Norttis", "Bacvu123");
             adb.createAccount("Norttis6","Bacvu126","Norttis6","bacvu126@gmail.com","Customer");
    }


    public Accounts getUser(String username) {
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
                        rs.getString("displayname"),
                        rs.getString("address"),
                        rs.getString("description"),
                        rs.getString("email"),
                        rs.getString("phone_number"),
                        rs.getString("role"),
                        rs.getString("status"),
                        rs.getString("avatar")
                );
                return a;
            }
        } catch (SQLException ex) {
            System.out.println(ex);
        }
        return null;
    }
    
     public Accounts getUserById(String accountId) {
        String sql = "SELECT * FROM Accounts WHERE account_id = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, accountId);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Accounts a = new Accounts(
                        rs.getInt("account_id"),
                        rs.getString("username"),
                        rs.getString("password"),
                        rs.getString("displayname"),
                        rs.getString("address"),
                        rs.getString("description"),
                        rs.getString("email"),
                        rs.getString("phone_number"),
                        rs.getString("role"),
                        rs.getString("status"),
                        rs.getString("avatar")
                );
                return a;
            }
        } catch (SQLException ex) {
            System.out.println(ex);
        }
        return null;
    }

    

    public void updateUser(String username, String password, String displayname, String address, String description, String email, String phone_number, String avatar, String accountId) {
    String sql = "UPDATE Accounts SET username = ?, email = ?, displayname = ?, address = ?, description = ?, avatar = ?, phone_number = ?, password = ? WHERE account_id = ?";
    
    try {
        PreparedStatement st = connection.prepareStatement(sql);

        st.setString(1, username);
        st.setString(2, email);
        st.setString(3, displayname);
        st.setString(4, address);
        st.setString(5, description);
        st.setString(6, avatar);
        st.setString(7, phone_number);
        st.setString(8, password);
        st.setString(9, accountId); 

        st.executeUpdate();
    } catch (SQLException ex) {
        System.out.println(ex);
    }
}

    

    public void createManager(String username, String password, String displayname, String address, String description, String email, String phone_number, String role, String status, String avatar) {
        String sql = "insert into Accounts values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, username);
            st.setString(2, password);
            st.setString(3, displayname);
            st.setString(4, address);
            st.setString(5, email);
            st.setString(6, phone_number);
            st.setString(7, role);
            st.setString(8, status);
            st.setString(9, avatar);
            st.setString(10, description);
            st.executeUpdate();
        } catch (SQLException ex) {
            System.out.println(ex);
        }
    }


//    public void updateUser(String username, String password, String displayname, String address, String description, String email, String phone_number, String avatar) {
//
//        String sql = "UPDATE Accounts SET username = ?, email = ?, displayname = ?, address = ?, description = ?, avatar = ?, phone_number = ?, password = ? WHERE username = ?";
//
//        try (PreparedStatement st = connection.prepareStatement(sql)) {
//            st.setString(1, username);
//            st.setString(2, email);
//            st.setString(3, phone_number);
//            st.setString(4, password);
//            st.setString(5, username);
//            st.setString(6, displayname);
//            st.setString(7, address);
//            st.setString(8, description);
//            st.setString(9, avatar);
//
//            int rowsAffected = st.executeUpdate();
//            if (rowsAffected > 0) {
//                System.out.println("Cập nhật hồ sơ thành công.");
//            } else {
//                System.out.println("Không tìm thấy người dùng với tên đăng nhập đã cho.");
//            }
//        } catch (SQLException ex) {
//        }
//    }

    public List<Accounts> getsearchNutritionist(String username, String search) {
        String sql = "SELECT * FROM Accounts WHERE username = ? LIKE search";
        List<Accounts> nutritionists = new ArrayList<>();
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
                        rs.getString("displayname"),
                        rs.getString("address"),
                        rs.getString("description"),
                        rs.getString("email"),
                        rs.getString("phone_number"),
                        rs.getString("role"),
                        rs.getString("status"),
                        rs.getString("avatar")
                );
                nutritionists.add(a);
            }
        } catch (SQLException ex) {
            System.out.println(ex);
        }
        return nutritionists;
    }

    public List<Accounts> getAllNutritionists() {
        String sql = "select * from Accounts where role = 'Nutritionist'";
        List<Accounts> nutritionists = new ArrayList<>();
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Accounts a = new Accounts(
                        rs.getInt("account_id"),
                        rs.getString("username"),
                        rs.getString("password"),
                        rs.getString("displayname"),
                        rs.getString("address"),
                        rs.getString("description"),
                        rs.getString("email"),
                        rs.getString("phone_number"),
                        rs.getString("role"),
                        rs.getString("status"),
                        rs.getString("avatar")
                );
                nutritionists.add(a);
            }
        } catch (SQLException ex) {
            System.out.println(ex);
        }
        return nutritionists;
    }

    public void createNutritionist(String username, String password, String displayname, String address, String description, String email, String phone_number, String role, String status, String avatar) {
        String sql = "insert into Accounts values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, username);
            st.setString(2, password);
            st.setString(3, displayname);
            st.setString(4, address);
            st.setString(5, email);
            st.setString(6, phone_number);
            st.setString(7, role);
            st.setString(8, status);
            st.setString(9, avatar);
            st.setString(10, description);
            st.executeUpdate();
        } catch (SQLException ex) {
            System.out.println(ex);
        }
    }

    public List<Accounts> searchByStatus(String status) {
        String sql = "SELECT * FROM Accounts WHERE status = ?";
        List<Accounts> users = new ArrayList<>();

        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, status);
            ResultSet rs = st.executeQuery();

            while (rs.next()) {
                Accounts a = new Accounts(
                        rs.getInt("account_id"),
                        rs.getString("username"),
                        rs.getString("password"),
                        rs.getString("displayname"),
                        rs.getString("address"),
                        rs.getString("description"),
                        rs.getString("email"),
                        rs.getString("phone_number"),
                        rs.getString("role"),
                        rs.getString("status"),
                        rs.getString("avatar")
                );
                users.add(a);
            }
        } catch (SQLException ex) {
            System.out.println(ex);
        }

        return users;
    }
    
    public List<Accounts> searchByUsername(String username) {
    String sql = "SELECT * FROM Accounts WHERE username LIKE ?";
    List<Accounts> users = new ArrayList<>();

    try {
        PreparedStatement st = connection.prepareStatement(sql);
        st.setString(1, "%" + username + "%"); // Use % to match any characters before or after the input
        ResultSet rs = st.executeQuery();

        while (rs.next()) {
            Accounts a = new Accounts(
                    rs.getInt("account_id"),
                    rs.getString("username"),
                    rs.getString("password"),
                    rs.getString("displayname"),
                    rs.getString("address"),
                    rs.getString("description"),
                    rs.getString("email"),
                    rs.getString("phone_number"),
                    rs.getString("role"),
                    rs.getString("status"),
                    rs.getString("avatar")
            );
            users.add(a);
        }
    } catch (SQLException ex) {
        System.out.println(ex);
    }

    return users;
}

}
