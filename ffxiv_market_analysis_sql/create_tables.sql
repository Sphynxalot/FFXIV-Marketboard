CREATE DATABASE ffxiv_market;
USE ffxiv_market;

/* Create items table */
CREATE TABLE items (
	item_id INT PRIMARY KEY,
    item_name VARCHAR(255),
    item_category VARCHAR(100),
    crafting_class VARCHAR(50)
);

/* Create market_data table */
CREATE TABLE market_data (
	market_id INT AUTO_INCREMENT PRIMARY KEY,
    item_id INT,
    server VARCHAR(50),
    price INT,
    quantity INT,
    last_upload_time TIMESTAMP,
    average_price DECIMAL(10,2),
    hq BOOLEAN,
    FOREIGN KEY (item_id) REFERENCES items(item_id)
);

/* Create sales_history table */
CREATE TABLE sales_history (
	sale_id INT AUTO_INCREMENT PRIMARY KEY,
    item_id INT,
    server VARCHAR(50),
    price INT,
    quantity INT,
    timestamp TIMESTAMP,
    FOREIGN KEY (item_id) REFERENCES items(item_id)
);