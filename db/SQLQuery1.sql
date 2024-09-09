create database HealthyFood

CREATE TABLE Accounts (
    account_id INT IDENTITY(1,1) PRIMARY KEY,  -- ID tài khoản, tự động tăng
    username NVARCHAR(50) NOT NULL UNIQUE,     -- Tên đăng nhập, không trùng lặp
    password NVARCHAR(255) NOT NULL,           -- Mật khẩu đã mã hóa
    email NVARCHAR(100) NOT NULL UNIQUE,       -- Email người dùng, không trùng lặp
    phone_number NVARCHAR(15),                 -- Số điện thoại (tùy chọn)
    role NVARCHAR(20) NOT NULL CHECK (role IN ('Customer', 'Admin', 'Manager', 'Nutritionist')),  -- Vai trò của người dùng
    status NVARCHAR(10) DEFAULT 'Active' CHECK (status IN ('Active', 'Inactive'))  -- Trạng thái tài khoản
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

CREATE TABLE Product (
    product_id INT IDENTITY(1,1) PRIMARY KEY,  -- ID sản phẩm, tự động tăng
    name NVARCHAR(255) NOT NULL,               -- Tên sản phẩm
	supplier NVARCHAR(255) NOT NULL,           -- Nguồn gốc
    description TEXT,                          -- Mô tả sản phẩm
    price DECIMAL(10, 2) NOT NULL,             -- Giá sản phẩm
    category NVARCHAR(255) NOT NULL,           -- Loại sản phẩm
    quantity_in_stock INT NOT NULL,            -- Số lượng sản phẩm trong kho
    status NVARCHAR(20) CHECK (status IN ('available', 'unavailable')) NOT NULL,  -- Tình trạng sản phẩm
    average_calories FLOAT,                    -- Lượng calo trung bình
);

CREATE TABLE Orders (
    order_id INT IDENTITY(1,1) PRIMARY KEY,  -- ID đơn hàng, tự động tăng
    account_id INT,                          -- ID tài khoản của khách hàng
    order_date DATETIME DEFAULT GETDATE(),   -- Ngày đặt hàng
    total_amount DECIMAL(10, 2) NOT NULL,    -- Tổng số tiền
    status NVARCHAR(20) CHECK (status IN ('Pending', 'Processing', 'Completed', 'Cancelled')) NOT NULL,  -- Trạng thái đơn hàng
    FOREIGN KEY (account_id) REFERENCES Accounts(account_id) ON DELETE CASCADE  -- Khóa ngoại tham chiếu đến bảng Accounts
);


