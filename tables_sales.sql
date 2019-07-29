CREATE TABLE Stores (
	store_id INT AUTO_INCREMENT PRIMARY KEY,
	store_name VARCHAR(255),
    phone VARCHAR(50),
    email VARCHAR(255),
    street VARCHAR(255),
    city VARCHAR(150),
    state VARCHAR(150),
    zip_code INT
);

CREATE TABLE order_items (
	order_id INT,
    item_id INT,
    product_id INT,
    quantity INT,
    list_price DECIMAL (10,2),
    discount DECIMAL (10,2),
    PRIMARY KEY (order_id, item_id)
);

CREATE TABLE orders (
	order_id INT PRIMARY KEY,
    customer_id INT,
    order_status INT,
    order_date VARCHAR(20),
    required_date VARCHAR(20),
    shipped_date VARCHAR(20),
    store_id INT,
    staff_id INT
);

CREATE TABLE customers (
	customer_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    phone VARCHAR(50),
    email VARCHAR(100),
    street VARCHAR(150),
    city VARCHAR(100),
    state VARCHAR(100),
    zip_code INT
);


CREATE TABLE staffs (
	staff_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    phone VARCHAR(50),
    actif ENUM('1','0'),
    store_id INT,
    manager_id INT
);
    