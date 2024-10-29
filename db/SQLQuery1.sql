CREATE TABLE Accounts (
    account_id INT IDENTITY(1,1) PRIMARY KEY,  -- ID tài khoản, tự động tăng
    username NVARCHAR(50) NOT NULL UNIQUE,     -- Tên đăng nhập, không trùng lặp
    password NVARCHAR(255) NOT NULL,           -- Mật khẩu đã mã hóa
	displayname NVARCHAR(255) NOT NULL,        -- Tên hiển thị 
	address NVARCHAR(255),                     -- Địa chỉ 
	description NVARCHAR(MAX),                 -- Description
    email NVARCHAR(100) NOT NULL UNIQUE,       -- Email người dùng, không trùng lặp
    phone_number NVARCHAR(15),                 -- Số điện thoại (tùy chọn)

    role NVARCHAR(20) NOT NULL CHECK (role IN ('Customer', 'Admin', 'Manager', 'Nutritionist')),  -- Vai trò của người dùng
    status NVARCHAR(10) DEFAULT 'Active' CHECK (status IN ('Active', 'Inactive')),  -- Trạng thái tài khoản
	avatar NVARCHAR(MAX),					   -- Avatar người dùng
	create_at DATETIME DEFAULT GETDATE(),
	update_at DATETIME DEFAULT GETDATE()
);

CREATE TABLE User_Health_Profile (
    profile_id INT IDENTITY(1,1) PRIMARY KEY,  -- ID hồ sơ sức khỏe, tự động tăng
    account_id INT,                               -- ID người dùng
    weight FLOAT NOT NULL,                     -- Cân nặng
    height FLOAT NOT NULL,                     -- Chiều cao
    age INT NOT NULL,                          -- Tuổi
    gender NVARCHAR(10) CHECK (gender IN ('male', 'female', 'other')) NOT NULL,  -- Giới tính
	bmi_result FLOAT NOT NULL                  -- chỉ số bmi
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
    total_amount DECIMAL(10, 2) NOT NULL,    -- Tổng số tiền
    status NVARCHAR(20) CHECK (status IN ('Pending', 'Processing', 'Completed', 'Cancelled')) NOT NULL,  -- Trạng thái đơn hàng
	total_calories FLOAT NOT NULL,           -- Tổng calo
	order_date DATETIME DEFAULT GETDATE(),   -- Ngày đặt hàng
    FOREIGN KEY (account_id) REFERENCES Accounts(account_id) ON DELETE SET NULL  -- Khóa ngoại tham chiếu đến bảng Accounts
);

CREATE TABLE Order_Items (
    order_item_id INT IDENTITY(1,1) PRIMARY KEY,
    order_id INT,
    product_id INT,
    prod_qty INT NOT NULL,
    total_price DECIMAL(10, 2)              
	FOREIGN KEY (order_id) REFERENCES Orders(order_id) ON DELETE CASCADE,
	FOREIGN KEY (product_id) REFERENCES Products(product_id) ON DELETE SET NULL,
);

CREATE TABLE Customer_Type (
    [type_id] INT IDENTITY(1,1) PRIMARY KEY,  -- ID loại sản phẩm, tự động tăng
    [type_name] NVARCHAR(255) NOT NULL,                -- Tên loại sản phẩm
);

CREATE TABLE Menu (
    menu_id INT IDENTITY(1,1) PRIMARY KEY,
    [type_id] INT,
    name NVARCHAR(255) NOT NULL,
    description NVARCHAR(MAX), 
	create_by INT,
	create_at DATETIME DEFAULT GETDATE(),
	update_at DATETIME DEFAULT GETDATE(),
	menu_name NVARCHAR(255),
	average_calories FLOAT,
	menuTitle NVARCHAR(255),
	status NVARCHAR(10),
	FOREIGN KEY (create_by) REFERENCES Accounts(account_id) ON DELETE SET NULL,
	FOREIGN KEY ([type_id]) REFERENCES Customer_Type([type_id]) ON DELETE SET NULL,
);

CREATE TABLE Menu_Detail (
    menu_detail_id INT IDENTITY(1,1) PRIMARY KEY,
	menu_id INT,
    product_id  INT,
	FOREIGN KEY (product_id) REFERENCES Products(product_id) ON DELETE SET NULL,
	FOREIGN KEY (menu_id) REFERENCES Menu(menu_id) ON DELETE SET NULL,
);
CREATE TABLE Reviews (
    review_id INT IDENTITY(1,1) PRIMARY KEY,
    account_id INT,
	product_id INT,
	comment NVARCHAR(MAX),
	create_at DATETIME DEFAULT GETDATE(),
	status NVARCHAR(10) CHECK (status IN ('Approved ', 'Rejected ')) NOT NULL,
	FOREIGN KEY (account_id) REFERENCES Accounts(account_id) ON DELETE SET NULL,
	FOREIGN KEY (product_id) REFERENCES Products(product_id) ON DELETE SET NULL,
);
CREATE TABLE WishList (
    wish_id INT IDENTITY(1,1) PRIMARY KEY,
    account_id INT,
	create_at DATETIME DEFAULT GETDATE(),
	FOREIGN KEY (account_id) REFERENCES Accounts(account_id) ON DELETE SET NULL,
);

CREATE TABLE Wish_Item (
    wish_item_id INT IDENTITY(1,1) PRIMARY KEY,
	wish_id INT,
	product_id INT,
	product_qty INT,
	FOREIGN KEY (wish_id) REFERENCES WishList(wish_id) ON DELETE SET NULL,
	FOREIGN KEY (product_id) REFERENCES Products(product_id) ON DELETE SET NULL,
);

CREATE TABLE Messages (
    id INT IDENTITY(1,1) PRIMARY KEY,
    sender_id INT NOT NULL,
    receiver_id INT NOT NULL,
    message NVARCHAR(MAX),
    timestamp DATETIME DEFAULT GETDATE(),
	FOREIGN KEY (sender_id) REFERENCES Accounts(account_id) ,
	FOREIGN KEY (receiver_id) REFERENCES Accounts(account_id) ,
);
CREATE TABLE BlogCategory (
    category_id INT IDENTITY(1,1) PRIMARY KEY, 
    name NVARCHAR(255) NOT NULL,                
);
CREATE TABLE Blogs (
    id INT IDENTITY(1,1) PRIMARY KEY,
    nutri_id INT NOT NULL,
	title NVARCHAR(255) NOT NULL,
	cate_id INT NOT NULL,
    content NVARCHAR(MAX),
    timestamp DATETIME DEFAULT GETDATE(),
	image NVARCHAR(MAX),
	FOREIGN KEY (nutri_id) REFERENCES Accounts(account_id),
	FOREIGN KEY (cate_id) REFERENCES BlogCategory(category_id) 
);





-- khỏi tạp dữ liệu
INSERT INTO Accounts (username, password, displayname, address, description, email, phone_number, role, status, avatar)
VALUES
('duckmen', 'Duckment123', 'Duckment123', '123 Main St', 'Regular customer', 'john@example.com', '1234567890', 'Customer', 'Active', NULL),
('datKa', 'datKa123', 'Admin User', '456 Admin St', 'Administrator account', 'admin@example.com', '0987654321', 'Admin', 'Active', NULL),
('datKa1', 'datKa124', 'Yuxly  Manager', '789 Manager St', 'Manages department', 'jane.manager@example.com', '5555555555', 'Manager', 'Active', NULL),
('Norttis', 'Bacvu123', 'Nort Nutritionist', '1010 Health St', 'Helps with diets', 'mary.nutritionist@example.com', '6666666666', 'Nutritionist', 'Active', NULL),
('guest_user', 'guest123', 'Guest User', 'No Address', 'Guest account', 'guest@example.com', NULL, 'Customer', 'Active', NULL),
('Norttis1', 'Bacvu124', 'Nort', '1010 Health St', 'Helps with diets', 'may.nutritionist@example.com', '6666666666', 'Customer', 'Active', NULL);
INSERT INTO Category (name)
VALUES
('Fruits'),
('Bakery'),
('Seafood'),
('Beverages'),
('Dairy Alternatives');



INSERT INTO Products (category_id, supplier, name, description, price, quantity_in_stock, status, average_calories, picture)
VALUES
(1, 'Fresh Farms Co.', 'Organic Apples', 'Fresh organic apples', 82000, 100, 'available', 52.0, 'apple.jpg'),
(2, 'Green Valley', 'Whole Wheat Bread', 'Whole wheat bread rich in fiber', 69000, 50, 'available', 247.0, 'bread.jpg'),
(3, 'Ocean Harvest', 'Salmon Fillets', 'Premium quality salmon fillets', 295000, 30, 'available', 208.0, 'salmon.jpg'),
(1, 'Healthy Harvest', 'Bananas', 'Ripe bananas with high potassium content', 28000, 200, 'available', 89.0, 'banana.jpg'),
(4, 'Vegan Choice', 'Almond Milk', 'Plant-based almond milk, dairy-free', 92000, 80, 'available', 30.0, 'almond_milk.jpg');

INSERT INTO Menu (name, description, create_by, menu_name, average_calories, status)
VALUES ('Dinner', N'đây là bữa ăn cho một người', 4, 'Green Salad', 200, 'Accept'),
('Breakfast', N'đây là bữa ăn cho một người', 4, 'Cheeseburger', 300 , 'Accept'),
('Breakfast', N'đây là bữa ăn cho một người', 4, 'Spaghetti', 300, 'Accept'),
('Breakfast', N'đây là bữa ăn cho một người', 4, 'Green Salad', 200, 'Accept');

INSERT INTO Menu_Detail(menu_id, product_id, product_qty) values (1, 1, 12), (2, 2, 13), (3, 3, 20), (4, 4, 26)

INSERT INTO Menu (type_id, name, description, create_by, create_at, update_at, menu_name, status, average_calories, menuTitle)
VALUES
( 1, N'Bữa sáng', N'đây là bữa sáng cho một người', 4, '2024-10-18 03:32:58.810', '2024-10-18 03:32:58.810', 'Cheeseburger', 'Accept', 300, 'Menu for underweight'),
( 1, N'Bữa sáng', N'đây là bữa sáng cho một người', 4, '2024-10-18 03:32:58.810', '2024-10-18 03:32:58.810', 'Spaghetti', 'Accept', 300, 'Menu for underweight'),
( 1, N'Bữa sáng', N'đây là bữa sáng cho một người', 4, '2024-10-18 03:32:58.810', '2024-10-18 03:32:58.810', 'Green Salad', 'Accept', 300, 'Menu for underweight'),
( 1, N'Bữa tối', N'đây là bữa sáng cho một người', 4, '2024-10-18 04:32:34.000', '2024-10-18 04:32:34.000', 'Green Salad', 'Accept', 300, 'Menu for underweight'),
( 2, 'Breakfast', 'demo descript', 4, '2024-10-20 01:56:19.357', '2024-10-20 01:56:19.357', 'Caeser salad', 'Reject', 300, 'demo reject'),
( 2, 'Dinner', 'demo descript', 4, '2024-10-24 01:12:41.103', '2024-10-24 01:12:41.103', 'Demo Name', 'In Process', 300, 'Demo 2'),
( 2, 'name1', 'demo', 4, '2024-10-25 02:31:03.100', '2024-10-25 02:31:03.100', 'demo1', 'In Process', 100, 'Demo 2'),
( 2, 'name1', 'demo', 4, '2024-10-25 02:31:03.150', '2024-10-25 02:31:03.150', 'demo2', 'In Process', 200, 'Demo 2'),
( 2, 'name1', 'demo', 4, '2024-10-25 02:31:03.170', '2024-10-25 02:31:03.170', 'demo 2.2', 'In Process', 3099, 'Demo 2');