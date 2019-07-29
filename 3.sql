CREATE TABLE Stores (
	store_id INT AUTO_INCREMENT PRIMARY KEY,
	store_name VARCHAR(255) NOT NULL,
    phone INT,
    email VARCHAR(255),
    street VARCHAR(255),
    city VARCHAR(150),
    state VARCHAR(150),
    zip_code INT
);

CREATE TABLE order_items (
	order_id INT,
    item_id INT AUTO_INCREMENT PRIMARY KEY,
    product_id INT,
    quantity INT,
    list_price DECIMAL (10,2),
    discount DECIMAL (10,2)
);

CREATE TABLE orders (
	order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    order_status ENUM('In Progress','Done'),
    order_date DATE,
    required_date DATE,
    shipped_date DATE,
    store_id INT,
    staff_id INT
);

CREATE TABLE customers (
	customer_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    phone INT,
    email VARCHAR(100),
    street VARCHAR(150),
    city VARCHAR(100),
    state VARCHAR(100),
    zip_code INT
);

CREATE TABLE staffs (
	staff_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100),
    phone INT,
    actif ENUM('Oui','Non'),
    store_id INT,
    manager_id INT
);
    