/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import model.Products;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import model.Category;

import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import model.Cart;
import model.DeliveryDetail;
import model.LineItem;
import model.Order;
import model.Reviews;

/**
 *
 * @author Norttie
 */
public class ProductDao extends DBContext {


    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public List<Products> getAllProduct() {
        List<Products> list = new ArrayList<>();
        String query = "Select * from Products";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Products(
                        rs.getInt(1),
                        rs.getInt(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getDouble(6),
                        rs.getInt(7),
                        rs.getString(8),
                        rs.getDouble(9),
                        rs.getString(10)));
            }
        } catch (SQLException e) {
        }
        return list;
    }

//    public static void main(String[] args) {
//        ProductDao dao = new ProductDao();
//        List<Products> list = dao.getAllProduct();
//        for(Products o : list){
//            System.out.println(o);
//        }
//    }
    public List<Category> getAllCategory() {
        List<Category> list = new ArrayList<>();
        String query = "Select * from Category";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Category(rs.getInt(1),
                        rs.getString(2)));

            }
        } catch (SQLException e) {
        }
        return list;
    }

//        public static void main(String[] args) {
//        ProductDao dao = new ProductDao();
//        List<Products> list = dao.getAllProduct();
//        List<Category> listC = dao.getAllCategory();
//        for(Category o : listC){
//            System.out.println(o);
//        }
//    }
    public List<Products> getProductsByCateId(String cid) {
        List<Products> list = new ArrayList<>();
        String query = "Select * from Products where category_id = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, cid);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Products(
                        rs.getInt(1),
                        rs.getInt(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getDouble(6),
                        rs.getInt(7),
                        rs.getString(8),
                        rs.getDouble(9),
                        rs.getString(10)));
            }
        } catch (SQLException e) {
        }
        return list;
    }

//    public static void main(String[] args) {
//        String cid = "1";
//        ProductDao dao = new ProductDao();
//        List<Products> list = dao.getAllProduct();
//        List<Products> listP = dao.getProductsByCateId(cid);
//        for (Products o : listP) {
//            System.out.println(o);
//        }
//    }
    public Products getProductsById(String id) {
        String sql = "Select * from Products where product_id =?";

        try (PreparedStatement st = connection.prepareStatement(sql)) {

            st.setString(1, id);

            ResultSet rs;
            rs = st.executeQuery();
            while (rs.next()) {
                Products acc = new Products(
                        rs.getInt(1),
                        rs.getInt(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getDouble(6),
                        rs.getInt(7),
                        rs.getString(8),
                        rs.getDouble(9),
                        rs.getString(10));

                return acc;
            }
        } catch (SQLException e) {
            System.out.println(e);
            return null;
        }

        return null;
    }

    public List<Products> searchByName(String txtSearch) {
        List<Products> list = new ArrayList<>();
        String sql = "Select * from Products where [name] LIKE ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, "%" + txtSearch + "%");
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Products(
                        rs.getInt(1),
                        rs.getInt(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getDouble(6),
                        rs.getInt(7),
                        rs.getString(8),
                        rs.getDouble(9),
                        rs.getString(10)));

            }
        } catch (SQLException e) {
            System.out.println(e);
            return null;
        }

        return list;
    }


    public String getWishIdByAccountId(String accountid) {
        String sql = "SELECT wish_id FROM WishList WHERE account_id = ?";
        String wishId = "";
        Connection conn = new DBContext().getConnection();
        PreparedStatement st = null;
        ResultSet rs = null;
        try {

            st = conn.prepareStatement(sql);
            st.setString(1, accountid);
            rs = st.executeQuery();
            if (rs.next()) {
                wishId = rs.getString(1);
                return wishId;
            } else {
                // Tạo wishlist mới nếu chưa tồn tại
                String insertWishListSql = "INSERT INTO WishList (account_id) VALUES (?)";
                st = conn.prepareStatement(insertWishListSql, Statement.RETURN_GENERATED_KEYS);
                st.setString(1, accountid);
                st.executeUpdate();
                rs = st.getGeneratedKeys();
                if (rs.next()) {
                    wishId = rs.getString(1);
                    return wishId;
                } else {
                    throw new SQLException("Failed to create wishlist.");
                }
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return "";

    }

    public void addProductToWishList(Products prod, String wishId, int quantity) {
        Connection conn = new DBContext().getConnection();
        PreparedStatement st = null;
        ResultSet rs = null;
        try {
            // Kiểm tra xem sản phẩm đã tồn tại trong wishlist chưa
            String selectWishItemSql = "SELECT * FROM Wish_Item WHERE wish_id = ? AND product_id = ?";
            st = conn.prepareStatement(selectWishItemSql);
            st.setString(1, wishId);
            st.setInt(2, prod.getProductId());
            rs = st.executeQuery();

            if (rs.next()) {
                // Nếu sản phẩm đã tồn tại, cập nhật số lượng
                String updateWishItemSql = "UPDATE Wish_Item SET product_qty = ? WHERE wish_id = ? AND product_id = ?";
                st = conn.prepareStatement(updateWishItemSql);
                st.setInt(1, quantity);
                st.setString(2, wishId);
                st.setInt(3, prod.getProductId());
                st.executeUpdate();
            } else {
                // Thêm sản phẩm mới vào wishlist
                String insertWishItemSql = "INSERT INTO Wish_Item (wish_id, product_id, product_qty) VALUES (?, ?, ?)";
                st = conn.prepareStatement(insertWishItemSql);
                st.setString(1, wishId);
                st.setInt(2, prod.getProductId());
                st.setInt(3, quantity);
                st.executeUpdate();
            }
        } catch (SQLException e) {
        }

    }

    public Cart getWishCartByAccountId(String accountId) {
        Connection conn = new DBContext().getConnection();
        PreparedStatement st = null;
        ResultSet rs = null;
        String wishId = getWishIdByAccountId(accountId);
        Cart cart = new Cart();
        try {
            String getWishItemSql = "select * from Wish_Item where wish_id = ? ";
            st = conn.prepareStatement(getWishItemSql);
            st.setString(1, wishId);
            rs = st.executeQuery();
            while (rs.next()) {
                Products product = getProductsById(rs.getString(3));
                int quantity = rs.getInt(4);
                LineItem lineitem = new LineItem(product, quantity);
                cart.addItem(lineitem);
            }
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        return cart;
    }

    public void deleteWishItem(String productid, String accountId) {
        Connection conn = new DBContext().getConnection();
        PreparedStatement st = null;
        String wishId = getWishIdByAccountId(accountId);
        Cart cart = new Cart();
        try {
            String getWishItemSql = "delete from Wish_Item where wish_id = ? and product_id = ?; ";
            st = conn.prepareStatement(getWishItemSql);
            st.setString(1, wishId);
            st.setString(2, productid);
            st.executeUpdate();

        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
    }

    public Map<Integer, String> getAllProductCategory() {
        String sql = "SELECT * FROM Category";
        Map<Integer, String> cateList = new ConcurrentHashMap<>();
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                cateList.put(rs.getInt(1), rs.getString(2));
            }
        } catch (SQLException ex) {
            System.out.println(ex);
        }
        return cateList;
    }


    public String createOrder(Cart cart, String accountId) {

        Connection conn = new DBContext().getConnection();
        PreparedStatement psOrder = null;
        PreparedStatement psOrderItems = null;
        ResultSet rs = null;
        if (!CheckvalidStockOrderItem(cart)) {
            return "outofstock";
        }
        try {

            String insertOrderSQL = "INSERT INTO Orders (account_id, total_amount, status, total_calories, order_date) VALUES (?, ?, 'Pending', ?, GETDATE())";
            psOrder = conn.prepareStatement(insertOrderSQL, Statement.RETURN_GENERATED_KEYS);
            psOrder.setString(1, accountId);
            psOrder.setDouble(2, cart.getTotalPrice());  // Tổng số tiền
            psOrder.setDouble(3, cart.getTotalCal());    // Tổng calo

            int affectedRows = psOrder.executeUpdate();
            if (affectedRows == 0) {
                throw new SQLException("Creating order failed, no rows affected.");
            }

            rs = psOrder.getGeneratedKeys();
            int orderId = 0;
            if (rs.next()) {
                orderId = rs.getInt(1);
            }

            String insertOrderItemSQL = "INSERT INTO Order_Items (order_id, product_id, prod_qty, total_price) VALUES (?, ?, ?, ?)";
            psOrderItems = conn.prepareStatement(insertOrderItemSQL);

            for (LineItem item : cart.getItems()) {
                psOrderItems.setInt(1, orderId);  // ID của đơn hàng
                psOrderItems.setInt(2, item.getProduct().getProductId());  // ID sản phẩm
                psOrderItems.setInt(3, item.getQuantity());  // Số lượng sản phẩm
                psOrderItems.setDouble(4, item.getTotal());  // Tổng giá trị của sản phẩm đó
                psOrderItems.addBatch();  // Thêm vào batch để thực hiện sau

            }
            for (LineItem item : cart.getItems()) {
                updateProductStock(item.getProduct().getProductId(), item.getQuantity());
            }

            psOrderItems.executeBatch();  // Thực hiện batch

            // Bước 3: Commit giao dịch
            conn.commit();
            return orderId + "";

        } catch (SQLException e) {

            return "outofstock";

        }
    }

    public void updateProductStock(int productId, int quantity) {
        Connection conn = new DBContext().getConnection();
        PreparedStatement st = null;
        Products product = getProductsById(productId + "");
        int stock = 0;
        if (product != null) {
            stock = product.getQuantityInStock();
            try {
                String sql = "update Products  set quantity_in_stock = ? where product_id = ? ";

                st = conn.prepareStatement(sql);
                st.setInt(1, stock - quantity);
                st.setString(2, productId + "");
                st.executeUpdate();
            } catch (Exception e) {
                System.out.println(e.getMessage());
            }
        }

    }

    public static void main(String[] args) {
        ProductDao prod = new ProductDao();
        prod.updateProductStock(4, 10);
    }

    public boolean CheckvalidStockOrderItem(Cart cart) {
        for (LineItem item : cart.getItems()) {
            Products product = getProductsById(item.getProduct().getProductId() + "");
            int stock = 0;
            if (product != null) {
                stock = product.getQuantityInStock();
                if (stock < item.getQuantity()) {
                    return false;
                }
            }

        }

        return true;
    }

    public Order getOrderById(String orderId) {
        StringBuilder sql = new StringBuilder("SELECT * FROM Orders o WHERE 1=1");
        Connection conn = new DBContext().getConnection();
        PreparedStatement psOrder = null;
        PreparedStatement psOrderItems = null;
        ResultSet rs = null;
        try {
            if (!orderId.equals("")) {
                sql.append("and o.order_id = ?");
            }
            psOrder = conn.prepareStatement(sql.toString());
            if (!orderId.equals("")) {
                psOrder.setString(1, orderId);
            }
            rs = psOrder.executeQuery();
            while (rs.next()) {
                Order order = new Order(
                        rs.getString(1),
                        rs.getString(2),
                        rs.getInt(3),
                        rs.getString(4),
                        rs.getDouble(5),
                        rs.getDate(6)
                );
                return order;
            }

        } catch (SQLException e) {

            System.out.println(e.getMessage());

        }
        return null;
    }

    public void saveDeliveryDetail(DeliveryDetail deDetail) {
        Connection conn = new DBContext().getConnection();
        PreparedStatement st = null;
        try {
            String sql = "insert into DeliveryDetails (order_id,full_name,email,mobile,address,delivery_notes) values (?,?,?,?,?,?)";
            st = conn.prepareStatement(sql);
            st.setString(1, deDetail.getOrderId());
            st.setString(2, deDetail.getFullname());
            st.setString(3, deDetail.getEmail());
            st.setString(4, deDetail.getPhone());
            st.setString(5, deDetail.getAddress());
            st.setString(6, deDetail.getNote());
            st.executeQuery();
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
    }

    public void ReviewProduct(String productId, String accountId, String rating, String comment) {
        String sql = "insert into Reviews (account_id,product_id,comment,rate,status) values(?,?,?,?,'Approved')";
        Connection conn = new DBContext().getConnection();
        PreparedStatement ps = null;
        try {
            ps = conn.prepareStatement(sql);
            ps.setString(1, accountId);
            ps.setString(2, productId);
            ps.setString(3, comment);
            ps.setString(4, rating);
            ps.executeUpdate();

        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
    }

    public List<Reviews> getReviewByProdId(int pageIndex, int star, String prodId) {
        StringBuilder sql = new StringBuilder("select * from Reviews r where 1=1");
        Connection conn = new DBContext().getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;
        List<Reviews> listR = new ArrayList<>();
        try {
            if (star != 0) {
                sql.append(" and r.rate = ?");
            }
            sql.append(" and r.product_id = ?");
            sql.append(" order by r.review_id offset ? rows fetch first 3 rows only");

            ps = conn.prepareStatement(sql.toString());
            int paramIndex = 1;
            if (star != 0) {
                ps.setInt(paramIndex++, star);
            }
            ps.setString(paramIndex++, prodId);
            ps.setInt(paramIndex, (pageIndex - 1) * 3);
            rs = ps.executeQuery();
            while (rs.next()) {
                Reviews rv = new Reviews(
                        rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getDouble(5),
                        rs.getDate(6));
                listR.add(rv);
            }
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        return listR;
    }

    public List<Reviews> getReviewByProdId(int star, String prodId) {
        StringBuilder sql = new StringBuilder("select * from Reviews r where 1=1");
        Connection conn = new DBContext().getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;
        List<Reviews> listR = new ArrayList<>();
        try {
            if (star != 0) {
                sql.append(" and r.rate = ?");
            }
            sql.append(" and r.product_id = ?");

            System.out.println(sql.toString());
            ps = conn.prepareStatement(sql.toString());
            int paramIndex = 1;
            if (star != 0) {
                ps.setInt(paramIndex++, star);
            }
            ps.setString(paramIndex++, prodId);
            rs = ps.executeQuery();
            while (rs.next()) {
                Reviews rv = new Reviews(
                        rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getDouble(5),
                        rs.getDate(6));
                listR.add(rv);
            }
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        return listR;
    }

    public int calNumPageBlog(List<Reviews> list) {
        int numpage = 0;
        numpage = list.size() / 3;
        if (list.size() % 3 != 0) {
            numpage++;
        }
        return numpage;
    }

    public List<Order> getAllOrderByAccId(String accountId) {
        Connection conn = new DBContext().getConnection();
        PreparedStatement st = null;
        ResultSet rs = null;
        List<Order> lOrder = new ArrayList<>();
        try {
            String sql = "select * from Orders where account_id =? order by order_date desc";
            st = conn.prepareStatement(sql);
            st.setString(1, accountId);
            rs = st.executeQuery();
            while (rs.next()) {
                Order order = new Order(
                        rs.getString(1),
                        rs.getString(2),
                        rs.getInt(3),
                        rs.getString(4),
                        rs.getDouble(5),
                        rs.getDate(6));
                lOrder.add(order);
            }
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        return lOrder;
    }

    public Cart getOrderDetailById(String orderId) {
        Connection conn = new DBContext().getConnection();
        PreparedStatement st = null;
        ResultSet rs = null;
        Cart cartOrder = new Cart();
        try {
            String sql = "select * from Order_Items where order_id = ? ";
            st = conn.prepareStatement(sql);
            st.setString(1, orderId);
            rs = st.executeQuery();
            while (rs.next()) {
                Products product = getProductsById(rs.getString(3));
                int quantity = rs.getInt(4);
                LineItem lineitem = new LineItem(product, quantity);
                cartOrder.addItem(lineitem);
            }
        } catch (SQLException e) {
        }
        return cartOrder;
    }

    public int getBMICategory(double bmi) {
        if (bmi < 18.5) {
            return 1; // Loại 1: BMI < 18.5
        } else if (bmi >= 18.5 && bmi < 24.9) {
            return 2; // Loại 2: 18.5 <= BMI < 24.9
        } else if (bmi >= 25 && bmi < 29.9) {
            return 3; // Loại 3: 25 <= BMI < 29.9
        } else if (bmi >= 30) {
            return 4; // Loại 4: BMI >= 30
        } else {
            return 5; // Loại 5: All BMIs (trường hợp mặc định)
        }
    }

//    public static void main(String[] args) {
//        ProductDao dao = new ProductDao();
//        String txtSearch = "organic";
//        List<Products> list = dao.searchByName(txtSearch);
//        for (Products o : list) {
//            System.out.println(o.getName());
//        }
//    }

//    public static void main(String[] args) {
//        ProductDao dao = new ProductDao();
//        List<Products> list = dao.getAllProduct();
//        for(Products o : list){
//            System.out.println(o);
//        }
//    }

//    public static void main(String[] args) {
//        String cid = "1";
//        ProductDao dao = new ProductDao();
//        List<Products> list = dao.getAllProduct();
//        List<Products> listP = dao.getProductsByCateId(cid);
//        for (Products o : listP) {
//            System.out.println(o);
//        }
//    }


    public List<Products> getProductsByPrice(String fromPrice, String toPrice) {
        List<Products> list = new ArrayList<>();
        String query = "SELECT * FROM Products WHERE price BETWEEN ? AND ?";

        try (Connection conn = new DBContext().getConnection(); PreparedStatement ps = conn.prepareStatement(query)) {

            ps.setDouble(1, Double.parseDouble(fromPrice));
            ps.setDouble(2, Double.parseDouble(toPrice));

            try (ResultSet rs = ps.executeQuery()) {
                while (rs.next()) {
                    list.add(new Products(
                            rs.getInt(1), // id
                            rs.getInt(2), // category_id
                            rs.getString(3), // product_name
                            rs.getString(4), // description
                            rs.getString(5), // image_url
                            rs.getDouble(6), // price
                            rs.getInt(7), // quantity
                            rs.getString(8), // status
                            rs.getDouble(9), // discount
                            rs.getString(10) // other_info
                    ));
                }
            }
        } catch (SQLException | NumberFormatException e) {
            e.printStackTrace(); // Xử lý lỗi
        }

        return list;
    }

//    public static void main(String[] args) {
//        ProductDao dao = new ProductDao();
//        String fromPrice = "23000";
//        String toPrice = "83000";
//        List<Products> list = dao.getAllProduct();
//        List<Products> listP = dao.getProductsByPrice(fromPrice, toPrice);
//        for (Products o : listP) {
//            System.out.println(o);
//        }
//    }
    public List<Products> sortProductsByPrice(String sortType) {
        List<Products> list = new ArrayList<>();
        String query = "SELECT * FROM Products ORDER BY price " + (sortType.equals("asc") ? "ASC" : "DESC");

        try (Connection conn = new DBContext().getConnection(); PreparedStatement ps = conn.prepareStatement(query); ResultSet rs = ps.executeQuery()) {

            while (rs.next()) {
                list.add(new Products(
                        rs.getInt(1), // id
                        rs.getInt(2), // category_id
                        rs.getString(3), // product_name
                        rs.getString(4), // description
                        rs.getString(5), // image_url
                        rs.getDouble(6), // price
                        rs.getInt(7), // quantity
                        rs.getString(8), // status
                        rs.getDouble(9), // discount
                        rs.getString(10) // other_info
                ));
            }
        } catch (SQLException e) {
            e.printStackTrace(); // Xử lý lỗi
        }

        return list;
    }

    public List<Products> sortProductsByCalories(String sortType) {
        List<Products> list = new ArrayList<>();
        String query = "SELECT * FROM Products ORDER BY average_calories " + (sortType.equals("asc") ? "ASC" : "DESC");

        try (Connection conn = new DBContext().getConnection(); PreparedStatement ps = conn.prepareStatement(query); ResultSet rs = ps.executeQuery()) {

            while (rs.next()) {
                list.add(new Products(
                        rs.getInt(1), // id
                        rs.getInt(2), // category_id
                        rs.getString(3), // product_name
                        rs.getString(4), // description
                        rs.getString(5), // image_url
                        rs.getDouble(6), // price
                        rs.getInt(7), // quantity
                        rs.getString(8), // status
                        rs.getDouble(9), // average_calories
                        rs.getString(10) // other_info
                ));
            }
        } catch (SQLException e) {
            e.printStackTrace(); // In lỗi nếu có
        }

        return list;
    }

    // Phương thức để lấy danh sách sản phẩm với phân trang
    public List<Products> getProducts(int pageNumber, int pageSize) throws SQLException {
        List<Products> productList = new ArrayList<>();
        String sql = "SELECT * FROM products LIMIT ? OFFSET ?";
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setInt(1, pageSize); // số sản phẩm mỗi trang
        statement.setInt(2, (pageNumber - 1) * pageSize); // tính toán offset

        ResultSet resultSet = statement.executeQuery();
        while (resultSet.next()) {
            Products product = new Products(
                    resultSet.getInt("product_id"),
                    resultSet.getInt("category"),
                    resultSet.getString("supplier"),
                    resultSet.getString("name"),
                    resultSet.getString("description"),
                    resultSet.getDouble("price"),
                    resultSet.getInt("quantity_in_stock"),
                    resultSet.getString("status"),
                    resultSet.getDouble("average_calories"),
                    resultSet.getString("picture")
            );
            productList.add(product);
        }
        return productList;
    }

    public int getTotalPage(List<Products> list) {
        int numpage = 0;
        numpage = list.size() / 12;
        if (list.size() % 12 != 0) {
            numpage++;
        }
        return numpage;
    }

    public int getTotalProduct() {
        String query = "select count(*) from Products";
        Connection conn = new DBContext().getConnection();
        PreparedStatement st = null;
        ResultSet rs = null;
        try {
            conn = new DBContext().getConnection();
            st = conn.prepareStatement(query);
            rs = st.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (SQLException e) {
        }
        return 0;
    }

//    public static void main(String[] args) {
//        ProductDao dao = new ProductDao();
//        int count = dao.getTotalProduct();
//        System.out.println(count);
//    }
    public List<Products> pagingProduct(int index) {
        List<Products> list = new ArrayList<>();
        String query = "SELECT * FROM Products ORDER BY product_id OFFSET ? ROWS FETCH NEXT 12 ROWS ONLY";

        try (Connection conn = new DBContext().getConnection();
             PreparedStatement st = conn.prepareStatement(query)) {
            st.setInt(1, (index - 1) * 12);
            try (ResultSet rs = st.executeQuery()) {
                while (rs.next()) {
                    list.add(new Products(
                            rs.getInt(1),
                            rs.getInt(2),
                            rs.getString(3),
                            rs.getString(4),
                            rs.getString(5),
                            rs.getDouble(6),
                            rs.getInt(7),
                            rs.getString(8),
                            rs.getDouble(9),
                            rs.getString(10)
                    ));
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }

//    public static void main(String[] args) {
//        ProductDao dao = new ProductDao();
//        List<Products> list = dao.pagingProduct(1);
//        for(Products p : list){
//            System.out.println(p);
//        }
//    }

}
