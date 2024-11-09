package dao;

import java.util.List;
import model.Accounts;
import java.sql.SQLException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import model.GoogleAccount;

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

    public void createAccount(String username, String password, String displayname, String email, String role) {
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
            st.setString(1, role);
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
            st.setString(1, id);
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

    public Accounts getUserEmail(String email) {
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

    public void updateUser(String username, String email, String phone_number, String password, String olduser) {
        String sql = "UPDATE Accounts SET username = ?, email = ?, phone_number = ?, String password = ? WHERE username = ?";
        try (PreparedStatement st = connection.prepareStatement(sql)) {
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

    public void createManager(String username, String password, String email, String phone_number, String role, String status) {
        String sql = "insert into Accounts values (?, ?, ?, ?, ?, ?)";
        try (PreparedStatement st = connection.prepareStatement(sql)) {

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

    public void updateUser(String id, String displayname, String avatar, String desc, String email, String phone, String address) {
        String sql = "UPDATE Accounts SET displayname = ?, avatar = ?, description = ?, email = ?,phone_number = ?, address = ? WHERE account_id = ?";

        try (PreparedStatement st = connection.prepareStatement(sql)) {
            st.setString(1, displayname);
            st.setString(2, avatar);
            st.setString(3, desc);
            st.setString(4, email);
            st.setString(5, phone);
            st.setString(6, address);
            st.setString(7, id);

            int rowsAffected = st.executeUpdate();
            System.out.println("Rows affected: " + rowsAffected); // Thêm dòng này để kiểm tra
            if (rowsAffected > 0) {
                System.out.println("Cập nhật thông tin người dùng thành công.");
            } else {
                System.out.println("Không tìm thấy người dùng với ID đã cho.");
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }

    public static void main(String[] args) {
        AccountsDAO adb = new AccountsDAO();
        adb.createAccount("ducmen123", "duckment123", "ducmen123", "ducmentthaem@gmail.com", "Customer");

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

    public void updateUser(String username, String password, String displayname, String address, String description, String email, String phone_number, String avatar, String account_id) {
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
            st.setString(9, account_id);

            st.executeUpdate();
        } catch (SQLException ex) {
            System.out.println(ex);
        }
    }

    public void createManager(String username, String password, String displayname, String address, String description, String email, String phone_number, String role, String status) {
        String sql = "insert into Accounts (username, password, displayname, address, description, email, phone_number, role, status) values (?, ?, ?, ?, ?, ?, ?, ?, ?)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, username);
            st.setString(2, password);
            st.setString(3, displayname);
            st.setString(4, address);
            st.setString(5, description);
            st.setString(6, email);
            st.setString(7, phone_number);
            st.setString(8, role);
            st.setString(9, status);

            st.executeUpdate();
        } catch (SQLException ex) {
            System.out.println(ex);
        }
    }

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

    public void createNutritionist(String username, String password, String displayname, String address, String description, String email, String phone_number, String role, String status) {
        String sql = "insert into Accounts (username, password, displayname, address, description, email, phone_number, role, status) values (?, ?, ?, ?, ?, ?, ?, ?, ?, )";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, username);
            st.setString(2, password);
            st.setString(3, displayname);
            st.setString(4, address);
            st.setString(5, description);
            st.setString(6, email);
            st.setString(7, phone_number);
            st.setString(8, role);
            st.setString(9, status);

            st.executeUpdate();
        } catch (SQLException ex) {
            System.out.println(ex);
        }
    }

    public List<Accounts> searchByStatusAndUsername(String status, String username) {
        String sql = "SELECT * FROM Accounts WHERE status = ? AND username LIKE ?";
        List<Accounts> users = new ArrayList<>();

        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, status);
            st.setString(2, "%" + username + "%"); // Use % to match partial username
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

    public List<Accounts> searchByStatus(String status) {
        String sql = "SELECT * FROM Accounts WHERE status = ?";
        List<Accounts> accountsList = new ArrayList<>();
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, status);

            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Accounts account = new Accounts(
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
                accountsList.add(account);
            }
        } catch (SQLException ex) {
            System.out.println(ex);
        }
        return accountsList;
    }

    public int loginByGoogle(GoogleAccount googleAccount) {
        try {
            // Kiểm tra xem email của tài khoản Google có tồn tại trong cơ sở dữ liệu hay không
            String checkQuery = "SELECT account_id, google_id FROM Accounts WHERE email = ?";
            PreparedStatement checkStmt = connection.prepareStatement(checkQuery);
            checkStmt.setString(1, googleAccount.getEmail());  // Đặt email từ tài khoản Google vào câu truy vấn
            ResultSet rs = checkStmt.executeQuery();  // Thực thi câu truy vấn và lưu kết quả

            if (rs.next()) {
                // Nếu email đã tồn tại trong cơ sở dữ liệu
                String googleId = rs.getString("google_id");

                if (googleId != null) {
                    // Đây là tài khoản đã liên kết với Google, vì có google_id -> tiến hành đăng nhập bằng Google
                    return rs.getInt("account_id");  // Trả về ID của tài khoản để đăng nhập
                } else {
                    // Đây là tài khoản thông thường chưa liên kết với Google
                    // Cập nhật tài khoản này để liên kết với Google
                    String updateQuery = "UPDATE Accounts SET google_id = ?, update_at = GETDATE() WHERE account_id = ?";
                    PreparedStatement updateStmt = connection.prepareStatement(updateQuery);
                    updateStmt.setString(1, googleAccount.getId());  // Đặt google_id từ tài khoản Google
                    updateStmt.setInt(2, rs.getInt("account_id"));  // Đặt account_id của tài khoản trong cơ sở dữ liệu

                    updateStmt.executeUpdate();  // Thực thi câu lệnh cập nhật
                    return rs.getInt("account_id");  // Trả về account_id nếu cập nhật thành công, ngược lại trả về -1
                }
            } else {
                // Nếu không có tài khoản nào có email này trong cơ sở dữ liệu, tạo tài khoản mới liên kết với Google
                String insertQuery = "INSERT INTO Accounts (username, password, displayname, email, role, status, google_id) VALUES (?, ?, ?, ?, 'Customer', 'Active', ?)";
                PreparedStatement insertStmt = connection.prepareStatement(insertQuery, Statement.RETURN_GENERATED_KEYS);
                insertStmt.setString(1, googleAccount.getEmail());  // Đặt username là email
                insertStmt.setString(2, "GoogleUser");  // Đặt mật khẩu mặc định là "GoogleUser" (có thể thay đổi sau)
                insertStmt.setString(3, googleAccount.getName());  // Đặt tên hiển thị là tên của tài khoản Google
                insertStmt.setString(4, googleAccount.getEmail());  // Đặt email từ tài khoản Google
                insertStmt.setString(5, googleAccount.getId());  // Đặt google_id từ tài khoản Google

                insertStmt.executeUpdate();  // Thực thi câu lệnh chèn
                    ResultSet generatedKeys = insertStmt.getGeneratedKeys();  // Lấy khóa chính (account_id) được tạo
                    if (generatedKeys.next()) {
                        return generatedKeys.getInt(1);  // Trả về account_id của tài khoản mới tạo
                    }
                
                return -1;  // Nếu không chèn được tài khoản mới, trả về -1 để báo lỗi
            }
        } catch (SQLException e) {
            e.printStackTrace();
            return -1;  // Indicate an error occurred
        }

    }
}
