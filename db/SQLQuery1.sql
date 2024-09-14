create database HealthyFood

CREATE TABLE Accounts (
    account_id INT IDENTITY(1,1) PRIMARY KEY,  -- ID tài khoản, tự động tăng
    username NVARCHAR(50) NOT NULL UNIQUE,     -- Tên đăng nhập, không trùng lặp
    password NVARCHAR(255) NOT NULL,           -- Mật khẩu đã mã hóa
    email NVARCHAR(100) NOT NULL UNIQUE,       -- Email người dùng, không trùng lặp
    phone_number NVARCHAR(15),                 -- Số điện thoại (tùy chọn)
    role NVARCHAR(20) NOT NULL CHECK (role IN ('Customer', 'Admin', 'Manager', 'Nutritionist')),  -- Vai trò của người dùng
    status NVARCHAR(10) DEFAULT 'Active' CHECK (status IN ('Active', 'Inactive')),  -- Trạng thái tài khoản
	avatar NVARCHAR(MAX)					   -- Avatar người dùng
);

CREATE TABLE User_Health_Profile (
    profile_id INT IDENTITY(1,1) PRIMARY KEY,  -- ID hồ sơ sức khỏe, tự động tăng
    account_id INT,                               -- ID người dùng
    weight FLOAT NOT NULL,                     -- Cân nặng
    height FLOAT NOT NULL,                     -- Chiều cao
    age INT NOT NULL,                          -- Tuổi
    gender NVARCHAR(10) CHECK (gender IN ('male', 'female', 'other')) NOT NULL,  -- Giới tính
    activity_level NVARCHAR(10) CHECK (activity_level IN ('low', 'medium', 'high')) NOT NULL,  -- Mức độ hoạt động
    FOREIGN KEY (account_id) REFERENCES Accounts(account_id) ON DELETE CASCADE  -- Khóa ngoại tham chiếu đến bảng Users
);

CREATE TABLE Category (
    category_id INT IDENTITY(1,1) PRIMARY KEY,  -- ID loại sản phẩm, tự động tăng
    name NVARCHAR(255) NOT NULL,                -- Tên loại sản phẩm
);

CREATE TABLE Products (
    product_id INT IDENTITY(1,1) PRIMARY KEY,   -- ID sản phẩm, tự động tăng
    category_id INT,                            -- ID loại sản phẩm (liên kết với bảng Category)
    supplier NVARCHAR(255) NOT NULL,                            -- ID nhà cung cấp
    name NVARCHAR(255) NOT NULL,                -- Tên sản phẩm
    description TEXT,                           -- Mô tả sản phẩm
    price DECIMAL(10, 2) NOT NULL,              -- Giá sản phẩm
    quantity_in_stock INT NOT NULL,             -- Số lượng sản phẩm trong kho
    status NVARCHAR(20) CHECK (status IN ('available', 'unavailable')) NOT NULL,  -- Trạng thái sản phẩm
    average_calories FLOAT,                     -- Lượng calo trung bình của sản phẩm
    picture NVARCHAR(MAX),                     -- Ảnh sản phẩm
    FOREIGN KEY (category_id) REFERENCES Category(category_id) ON DELETE SET NULL,  -- Khóa ngoại tham chiếu đến bảng Category
);

CREATE TABLE Orders (
    order_id INT IDENTITY(1,1) PRIMARY KEY,  -- ID đơn hàng, tự động tăng
    account_id INT,                          -- ID tài khoản của khách hàng
    order_date DATETIME DEFAULT GETDATE(),   -- Ngày đặt hàng
    total_amount DECIMAL(10, 2) NOT NULL,    -- Tổng số tiền
    status NVARCHAR(20) CHECK (status IN ('Pending', 'Processing', 'Completed', 'Cancelled')) NOT NULL,  -- Trạng thái đơn hàng
    FOREIGN KEY (account_id) REFERENCES Accounts(account_id) ON DELETE CASCADE  -- Khóa ngoại tham chiếu đến bảng Accounts
);

// khởi tạo dữ liệu 
INSERT INTO Category (name)
VALUES ('Fruits'),
       ('Vegetables');

INSERT INTO Products (category_id, supplier, name, description, price, quantity_in_stock, status, average_calories, picture)
VALUES 
(1, 'Supplier A', 'Apple', 'Fresh organic apples', 1.50, 100, 'available', 52.0, 'apple.jpg'),
(2, 'Supplier B', 'Carrot', 'Fresh organic carrots', 0.75, 200, 'available', 41.0, 'carrot.jpg');

