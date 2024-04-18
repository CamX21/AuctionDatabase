--CREATE TABLE Seller (
   -- seller_id INT PRIMARY KEY,
   -- name VARCHAR(255),
    --username VARCHAR(50) UNIQUE,
  --  password VARCHAR(50),
  --  address_street VARCHAR(255),
  --  address_city VARCHAR(100),
  --  address_state VARCHAR(50),
  --  address_zip VARCHAR(20),
  --  email VARCHAR(255),
  --  telephone VARCHAR(20),
  --  card_owner_name VARCHAR(255),
 --   card_number VARCHAR(20),
  --  card_expiration_date DATE
--);

--CREATE TABLE Buyer (
 --   buyer_id INT PRIMARY KEY,
--    name VARCHAR(255),
  --  username VARCHAR(50) UNIQUE,
  --  password VARCHAR(50),
  --  address_street VARCHAR(255),
 --   address_city VARCHAR(100),
 --   address_state VARCHAR(50),
  --  address_zip VARCHAR(20),
  --  email VARCHAR(255),
 --   telephone VARCHAR(20),
 --   card_owner_name VARCHAR(255),
 --   card_number VARCHAR(20),
 --   card_expiration_date DATE
--);

--CREATE TABLE Item (
 --   item_id INT PRIMARY KEY,
--    name VARCHAR(255),
--    condition VARCHAR(20) CHECK (condition IN ('New', 'Refurbished', 'Explained')),
 --   initial_price DECIMAL(10,2),
 --   description TEXT,
 --   quantity INT,
 --   owner_id INT,
 --   start_datetime DATETIME,
  --  end_datetime DATETIME,
  --  FOREIGN KEY (owner_id) REFERENCES Seller(seller_id)
	--);
--	CREATE TABLE Bid (
  --  bid_id INT PRIMARY KEY,
  --  buyer_id INT,
   -- item_id INT,
   -- bid_price DECIMAL(10,2),
   -- bid_datetime DATETIME,
  --  FOREIGN KEY (buyer_id) REFERENCES Buyer(buyer_id),
  --  FOREIGN KEY (item_id) REFERENCES Item(item_id)
--);
--INSERT INTO Seller (seller_id, name, username, password, address_street, address_city, address_state, address_zip, email, telephone, card_owner_name, card_number, card_expiration_date) VALUES
--(1, 'John Doe', 'johndoe', 'password123', '123 Main St', 'Anytown', 'CA', '12345', 'johndoe@example.com', '555-1234', 'John Doe', '1234567890123456', '2025-01-01'),
--(2, 'Jane Smith', 'janesmith', 'pass123', '456 Elm St', 'Sometown', 'NY', '54321', 'janesmith@example.com', '555-5678', 'Jane Smith', '9876543210987654', '2024-12-01'),
--(3, 'Michael Johnson', 'mikejohn', 'mikepass', '789 Oak St', 'Othertown', 'TX', '67890', 'mike@example.com', '555-9012', 'Michael Johnson', '5678901234567890', '2025-03-01'),
--(4, 'Emily Brown', 'emilyb', 'browneyes', '321 Pine St', 'AnotherTown', 'FL', '45678', 'emily@example.com', '555-3456', 'Emily Brown', '3456789012345678', '2024-11-01'),
--(5, 'David Wilson', 'davidw', 'davidpass', '654 Maple St', 'Somewhere', 'WA', '23456', 'david@example.com', '555-7890', 'David Wilson', '9012345678901234', '2025-02-01'),
--(6, 'Sarah Taylor', 'saraht', 'password', '987 Cedar St', 'Nowhere', 'OR', '34567', 'sarah@example.com', '555-2345', 'Sarah Taylor', '6789012345678901', '2024-10-01'),
--(7, 'Christopher Lee', 'chrisl', 'pass1234', '456 Birch St', 'Everywhere', 'OH', '56789', 'chris@example.com', '555-6789', 'Christopher Lee', '4567890123456789', '2025-04-01'),
--(8, 'Amanda Martinez', 'amandam', 'amandapass', '789 Walnut St', 'Anywhere', 'GA', '45678', 'amanda@example.com', '555-8901', 'Amanda Martinez', '2345678901234567', '2024-09-01');
--INSERT INTO Buyer (buyer_id, name, username, password, address_street, address_city, address_state, address_zip, email, telephone, card_owner_name, card_number, card_expiration_date) VALUES
--(1, 'Alice Johnson', 'alicej', 'password123', '123 Main St', 'Anytown', 'CA', '12345', 'alice@example.com', '555-1234', 'Alice Johnson', '1234567890123456', '2025-01-01'),
--(2, 'Bob Smith', 'bobsmith', 'pass123', '456 Elm St', 'Sometown', 'NY', '54321', 'bob@example.com', '555-5678', 'Bob Smith', '9876543210987654', '2024-12-01'),
--(3, 'Charlie Brown', 'charlieb', 'browneyes', '789 Oak St', 'Othertown', 'TX', '67890', 'charlie@example.com', '555-9012', 'Charlie Brown', '5678901234567890', '2025-03-01'),
--(4, 'David Wilson', 'davidw', 'davidpass', '321 Pine St', 'AnotherTown', 'FL', '45678', 'david@example.com', '555-3456', 'David Wilson', '3456789012345678', '2024-11-01'),
--(5, 'Emily Taylor', 'emilyt', 'password', '654 Maple St', 'Somewhere', 'WA', '23456', 'emily@example.com', '555-7890', 'Emily Taylor', '9012345678901234', '2025-02-01'),
--(6, 'Frank Martinez', 'frankm', 'pass1234', '987 Cedar St', 'Nowhere', 'OR', '34567', 'frank@example.com', '555-2345', 'Frank Martinez', '6789012345678901', '2024-10-01'),
--(7, 'Grace Lee', 'gracel', 'gracepass', '456 Birch St', 'Everywhere', 'OH', '56789', 'grace@example.com', '555-6789', 'Grace Lee', '4567890123456789', '2025-04-01'),
--(8, 'Hannah Garcia', 'hannahg', 'password567', '789 Walnut St', 'Anywhere', 'GA', '45678', 'hannah@example.com', '555-8901', 'Hannah Garcia', '2345678901234567', '2024-09-01'),
--(9, 'Isaac Brown', 'isaacb', 'password789', '123 Elm St', 'Someplace', 'NC', '98765', 'isaac@example.com', '555-2345', 'Isaac Brown', '9876543210987654', '2025-05-01'),
--(10, 'Jessica Lopez', 'jessical', 'pass456', '456 Oak St', 'Nowhereville', 'SC', '54321', 'jessica@example.com', '555-6789', 'Jessica Lopez', '5678901234567890', '2024-08-01'),
--(11, 'Kevin Smith', 'kevins', 'kevinpass', '789 Maple St', 'Anywhere', 'TX', '23456', 'kevin@example.com', '555-3456', 'Kevin Smith', '3456789012345678', '2025-06-01'),
--(12, 'Linda Johnson', 'lindaj', 'password123', '123 Cedar St', 'Somecity', 'CA', '56789', 'linda@example.com', '555-9012', 'Linda Johnson', '9012345678901234', '2024-07-01'),
--(13, 'Mike Adams', 'mikea', 'password123', '456 Pine St', 'Anytown', 'TX', '34567', 'mike@example.com', '555-6789', 'Mike Adams', '6789012345678901', '2025-08-01'),
--(14, 'Nancy Wilson', 'nancyw', 'pass789', '789 Elm St', 'Othercity', 'FL', '45678', 'nancy@example.com', '555-1234', 'Nancy Wilson', '4567890123456789', '2024-06-01'),
--(15, 'Olivia Brown', 'oliviab', 'password456', '654 Birch St', 'Anycity', 'GA', '23456', 'olivia@example.com', '555-5678', 'Olivia Brown', '2345678901234567', '2025-07-01');

--INSERT INTO Item (item_id, name, condition, initial_price, description, quantity, owner_id, start_datetime, end_datetime) VALUES
--(1, 'Smartphone', 'New', 500.00, 'Brand new smartphone with latest features.', 10, 1, '2024-04-01 12:00:00', '2024-04-15 12:00:00'),
--(2, 'Laptop', 'Refurbished', 800.00, 'Refurbished laptop in excellent condition.', 5, 2, '2024-04-02 12:00:00', '2024-04-16 12:00:00'),
--(3, 'Watch', 'Explained', 300.00, 'Classic wristwatch with leather strap.', 8, 3, '2024-04-03 12:00:00', '2024-04-17 12:00:00'),
--(4, 'Headphones', 'New', 100.00, 'High-quality wireless headphones.', 15, 4, '2024-04-04 12:00:00', '2024-04-18 12:00:00'),
--(5, 'Tablet', 'New', 400.00, 'Brand new tablet with large display.', 7, 5, '2024-04-05 12:00:00', '2024-04-19 12:00:00'),
--(6, 'Camera', 'Refurbished', 600.00, 'Refurbished camera with advanced features.', 3, 6, '2024-04-06 12:00:00', '2024-04-20 12:00:00'),
--(7, 'Fitness Tracker', 'New', 80.00, 'Track your fitness goals with this device.', 12, 7, '2024-04-07 12:00:00', '2024-04-21 12:00:00'),
--(8, 'Speaker', 'Explained', 150.00, 'Quality speakers with great sound.', 10, 8, '2024-04-08 12:00:00', '2024-04-22 12:00:00'),
--(9, 'Gaming Console', 'New', 300.00, 'Experience gaming like never before.', 5, 1, '2024-04-09 12:00:00', '2024-04-23 12:00:00'),
--(10, 'Printer', 'Refurbished', 200.00, 'Refurbished printer for all your printing needs.', 8, 2, '2024-04-10 12:00:00', '2024-04-24 12:00:00'),
--(11, 'Smartwatch', 'New', 250.00, 'Stay connected with this smartwatch.', 6, 3, '2024-04-11 12:00:00', '2024-04-25 12:00:00'),
--(12, 'Sunglasses', 'New', 120.00, 'Protect your eyes with style.', 10, 4, '2024-04-12 12:00:00', '2024-04-26 12:00:00'),
--(13, 'Backpack', 'Explained', 50.00, 'Spacious backpack for your everyday needs.', 15, 5, '2024-04-13 12:00:00', '2024-04-27 12:00:00'),
--(14, 'Power Bank', 'New', 30.00, 'Never run out of battery on-the-go.', 20, 6, '2024-04-14 12:00:00', '2024-04-28 12:00:00'),
--(15, 'Coffee Maker', 'New', 100.00, 'Brew your favorite coffee at home.', 7, 7, '2024-04-15 12:00:00', '2024-04-29 12:00:00'),
--(16, 'Bluetooth Earbuds', 'New', 50.00, 'Wireless earbuds for convenient listening.', 10, 8, '2024-04-16 12:00:00', '2024-04-30 12:00:00'),
--(17, 'Digital Camera', 'Refurbished', 400.00, 'Capture memories with this refurbished camera.', 4, 1, '2024-04-17 12:00:00', '2024-05-01 12:00:00'),
--(18, 'Smart Speaker', 'New', 120.00, 'Get answers and play music with voice commands.', 6, 2, '2024-04-18 12:00:00', '2024-05-02 12:00:00'),
--(19, 'Wireless Mouse', 'Explained', 20.00, 'Ergonomic design for comfortable use.', 15, 3, '2024-04-19 12:00:00', '2024-05-03 12:00:00'),
--(20, 'External Hard Drive', 'New', 80.00, 'Store and backup your important files.', 8, 4, '2024-04-20 12:00:00', '2024-05-04 12:00:00');

INSERT INTO Bid (bid_id, buyer_id, item_id, bid_price, bid_datetime) VALUES
(1, 1, 1, 520.00, '2024-04-14 10:00:00'),  -- Buyer 1 bids $520 for Smartphone
(2, 2, 2, 850.00, '2024-04-15 09:00:00'),  -- Buyer 2 bids $850 for Laptop
(3, 3, 3, 320.00, '2024-04-16 11:00:00'),  -- Buyer 3 bids $320 for Watch
(4, 4, 4, 110.00, '2024-04-17 15:00:00'),  -- Buyer 4 bids $110 for Headphones
(5, 5, 5, 420.00, '2024-04-18 14:00:00'),  -- Buyer 5 bids $420 for Tablet
(6, 6, 6, 650.00, '2024-04-19 13:00:00'),  -- Buyer 6 bids $650 for Camera
(7, 7, 7, 85.00, '2024-04-20 10:00:00'),   -- Buyer 7 bids $85 for Fitness Tracker
(8, 8, 8, 160.00, '2024-04-21 09:00:00'),  -- Buyer 8 bids $160 for Speaker
(9, 1, 9, 310.00, '2024-04-22 11:00:00'),  -- Buyer 1 bids $310 for Gaming Console
(10, 2, 10, 220.00, '2024-04-23 14:00:00'),-- Buyer 2 bids $220 for Printer

-- Bids for items that did not sell
(11, 3, 11, 260.00, '2024-04-24 12:00:00'),-- Buyer 3 bids $260 for Smartwatch
(12, 4, 12, 130.00, '2024-04-25 11:00:00'),-- Buyer 4 bids $130 for Sunglasses
(13, 5, 13, 60.00, '2024-04-26 10:00:00'), -- Buyer 5 bids $60 for Backpack
(14, 6, 14, 35.00, '2024-04-27 09:00:00'), -- Buyer 6 bids $35 for Power Bank
(15, 7, 15, 110.00, '2024-04-28 08:00:00'),-- Buyer 7 bids $110 for Coffee Maker
(16, 8, 16, 55.00, '2024-04-29 07:00:00'), -- Buyer 8 bids $55 for Bluetooth Earbuds
(17, 1, 17, 420.00, '2024-04-30 06:00:00'),-- Buyer 1 bids $420 for Digital Camera
(18, 2, 18, 130.00, '2024-05-01 05:00:00'),-- Buyer 2 bids $130 for Smart Speaker
(19, 3, 19, 25.00, '2024-05-02 04:00:00'), -- Buyer 3 bids $25 for Wireless Mouse
(20, 4, 20, 90.00, '2024-05-03 03:00:00'); -- Buyer 4 bids $90 for External Hard Drive