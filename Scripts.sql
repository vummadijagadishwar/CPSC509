

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

DROP TABLE IF EXISTS `bill`;
CREATE TABLE IF NOT EXISTS `bill` (
  `bill_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `Bill_generated_by` int(11) NOT NULL,
  `TotalAmount` float NOT NULL,
  `Bill_datetime` datetime NOT NULL,
  PRIMARY KEY (`bill_id`),
  KEY `order_id` (`order_id`),
  KEY `Bill_generated_by` (`Bill_generated_by`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`bill_id`, `order_id`, `Bill_generated_by`, `TotalAmount`, `Bill_datetime`) VALUES
(1, 3, 9, 500, '2021-10-20 15:15:38'),
(2, 5, 10, 60, '2021-10-02 21:30:10'),
(3, 4, 9, 100, '2021-10-26 21:22:21'),
(4, 2, 7, 50, '2021-10-07 19:50:31');

-- --------------------------------------------------------

--
-- Table structure for table `cuisinetype`
--

DROP TABLE IF EXISTS `cuisinetype`;
CREATE TABLE IF NOT EXISTS `cuisinetype` (
  `Cuisine_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `Cuisine_type_name` text NOT NULL,
  PRIMARY KEY (`Cuisine_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cuisinetype`
--

INSERT INTO `cuisinetype` (`Cuisine_type_id`, `Cuisine_type_name`) VALUES
(1, 'Italian'),
(2, 'Chinese'),
(3, 'Thai'),
(4, 'Indian');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE IF NOT EXISTS `customer` (
  `Customer_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Fname` varchar(10) NOT NULL,
  `Lname` varchar(10) NOT NULL,
  `Address` text NOT NULL,
  `Phone_no` varchar(15) NOT NULL,
  PRIMARY KEY (`Customer_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`Customer_Id`, `Fname`, `Lname`, `Address`, `Phone_no`) VALUES
(1, 'Martin', 'Hicks', 'Kingsley Hill Powis Road', '8463793518'),
(2, 'Adrian', 'Dsouza', '87 Jerman Street St James School', '8646749271'),
(3, 'James', 'Bennet', '1a Dorset Street', '84931439271'),
(4, 'Simon', 'Wells', '46 Gordon Square Bloomsbury', '7815243716'),
(5, 'Luna', 'Cox', '36 Craveen Street Charing Cross', '9804415264'),
(6, 'Eliza', 'Harris', '41 Redhill Road,Rowlans Castle,Hampsphire', '8362815301'),
(7, 'Alexander', 'Jones', '25 High Street,Banbury,OX16 5EG', '9753715855');

-- --------------------------------------------------------

--
-- Table structure for table `customerfeedback`
--

DROP TABLE IF EXISTS `customerfeedback`;
CREATE TABLE IF NOT EXISTS `customerfeedback` (
  `Feedback_id` int(11) NOT NULL AUTO_INCREMENT,
  `Cust_id` int(11) NOT NULL,
  `Ratings` int(11) NOT NULL,
  `Comments` text NOT NULL,
  PRIMARY KEY (`Feedback_id`),
  KEY `Cust_id` (`Cust_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customerfeedback`
--

INSERT INTO `customerfeedback` (`Feedback_id`, `Cust_id`, `Ratings`, `Comments`) VALUES
(1, 7, 3, 'Fresh and delicious'),
(2, 6, 4, 'reasonable and varied');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
CREATE TABLE IF NOT EXISTS `employee` (
  `Emp_id` int(11) NOT NULL,
  `Fname` varchar(10) NOT NULL,
  `Lname` varchar(10) NOT NULL,
  `Phone_no` varchar(15) NOT NULL,
  `Address` text NOT NULL,
  `Age` int(11) NOT NULL,
  `Role_id` int(11) NOT NULL,
  `Salary` float NOT NULL,
  PRIMARY KEY (`Emp_id`),
  KEY `Role_id` (`Role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`Emp_id`, `Fname`, `Lname`, `Phone_no`, `Address`, `Age`, `Role_id`, `Salary`) VALUES
(1, 'Stephen', 'Richards', '7889493444', '1111 Calle Vista Drive, Los Angeles, California, United States', 28, 1, 3200),
(2, 'John', 'Kennedy', '9836728271', 'MR THOMAS CLARK\r\n117 RUSSELL DRIVE\r\nLONDON WIP7HQ LONDON WIP7HQ\r\nENGLAND', 32, 4, 2000),
(3, 'Harold', 'Finch', '8493939271', '10 Downing Street,London,Greater London,United Kingdom', 25, 3, 2590),
(4, 'Rose', 'Sanders', '8493949292', 'Weighburgasse 26,A-1010 Vienna,Austria ', 38, 8, 1000),
(5, 'Alice', 'Patterson', '785719254', '112 2nd street,Los Altos, California,USA', 35, 8, 1000),
(6, 'John', 'Joseph', '8493939271', '15 rue Pierre Charron Paris', 30, 7, 3500),
(7, 'Paul', 'Watkins', '7889493444', 'c/o Henry Roth,50 Oakland Ave,USA', 27, 5, 2500),
(8, 'Charlie', 'Matthews', '9836728271', 'Trinity college,dublin,ireland', 29, 2, 3000),
(9, 'Polly', 'Jones', '8469362136', '1 Chapel Hill,Heswall,Bournemouth,BH1 1AA', 30, 6, 2900),
(10, 'Robert', 'Smith', '8463793518', '1737 Marshivelle road,germany', 26, 9, 2400),
(11, 'Joe', 'Smith', '973351752', 'Bagshot Road,Bracknell Bershire', 26, 10, 1000);

-- --------------------------------------------------------

--
-- Table structure for table `employee_role`
--

DROP TABLE IF EXISTS `employee_role`;
CREATE TABLE IF NOT EXISTS `employee_role` (
  `RoleId` int(11) NOT NULL,
  `Role` text NOT NULL,
  `Description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`RoleId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee_role`
--

INSERT INTO `employee_role` (`RoleId`, `Role`, `Description`) VALUES
(1, 'Pastry Chef', NULL),
(2, 'Kitchen Manager', NULL),
(3, 'Line Cook', NULL),
(4, 'Server', NULL),
(5, 'Waiter', NULL),
(6, 'Cashier', NULL),
(7, 'Head Chef', NULL),
(8, 'Dishwasher', NULL),
(9, 'Sommeliers', NULL),
(10, 'Delivery Staff', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `food`
--

DROP TABLE IF EXISTS `food`;
CREATE TABLE IF NOT EXISTS `food` (
  `Food_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `cuisine_type_id` int(11) NOT NULL,
  `Food_name` varchar(25) NOT NULL,
  `Food_description` text NOT NULL,
  `Price` float NOT NULL,
  `is_Available` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`Food_id`),
  KEY `category_id` (`category_id`),
  KEY `cuisine_type_id` (`cuisine_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `food`
--

INSERT INTO `food` (`Food_id`, `category_id`, `cuisine_type_id`, `Food_name`, `Food_description`, `Price`, `is_Available`) VALUES
(1, 1, 1, 'Lasagna', 'lasagne noodles are layered with tomato or meat sauce, and ricotta cheese, topped with mozzarella cheese and baked.', 30, 1),
(2, 1, 1, 'Sweet corn pizza', 'Flat base of leavened wheat-based dough topped with  cheese, and sweet corn', 60, 1),
(3, 1, 2, 'Hot and Sour Soup', 'It is made with the goodness of mushrooms, cabbage, carrot and a spicy twist of red peppers or white pepper and sour with vinegar.', 20, 1),
(4, 2, 2, 'Szechwan Chilli Chicken', 'A fiery delight straight from the Sichuan region. It is loaded with pungent spices like brown pepper. red chillies, ginger, green chillies and white pepper.', 70, 1),
(5, 2, 2, 'Stir Fried Tofu with Rice', 'A simple stir-fry with tofu and oriental sauce.served with some fried rice to make a wholesome meal.', 75, 1),
(6, 3, 4, 'Gulab Jamun', 'The good old delight made with khoya, fried golden and finally dipped in saffron induced sugar syrup', 25, 1),
(7, 3, 4, 'Rasgulla', 'These spherical dumplings are cooked in a sweet syrup until the juice infiltrates the dough.', 25, 1),
(8, 4, 3, 'Cha Yen', 'this Thai iced tea, it\'s the milky, orange drink', 18, 1),
(9, 2, 3, 'The Thai fish curry', 'The coconut milk curry sauce with garlic, ginger, and curry paste is creamy and flavorful. And ever so gently simmering the fish keeps it tender and delicate.', 50, 0),
(10, 2, 4, 'Veg Biryani', 'An authentic veg biryani is  cooked on dum', 100, 1);

-- --------------------------------------------------------

--
-- Table structure for table `food category`
--

DROP TABLE IF EXISTS `food category`;
CREATE TABLE IF NOT EXISTS `food category` (
  `Category_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Category_Name` varchar(20) NOT NULL,
  PRIMARY KEY (`Category_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `food category`
--

INSERT INTO `food category` (`Category_Id`, `Category_Name`) VALUES
(1, 'Starter'),
(2, 'Main Course'),
(3, 'Dessert'),
(4, 'Beverage');

-- --------------------------------------------------------

--
-- Table structure for table `ingredients`
--

DROP TABLE IF EXISTS `ingredients`;
CREATE TABLE IF NOT EXISTS `ingredients` (
  `Ingredient_id` int(11) NOT NULL AUTO_INCREMENT,
  `Supplied_by` int(11) NOT NULL,
  `Ingredient_Name` text NOT NULL,
  PRIMARY KEY (`Ingredient_id`),
  KEY `Supplied_by` (`Supplied_by`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ingredients`
--

INSERT INTO `ingredients` (`Ingredient_id`, `Supplied_by`, `Ingredient_Name`) VALUES
(1, 1, 'Olives'),
(2, 1, 'bacon'),
(3, 1, 'Vegetables'),
(4, 1, 'cheese'),
(5, 2, 'rice'),
(6, 2, 'mint'),
(7, 2, 'Fruits'),
(8, 3, 'Coconut milk'),
(9, 3, 'Fish sauce'),
(10, 4, 'Herbs'),
(11, 4, 'Sweet corn');

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

DROP TABLE IF EXISTS `inventory`;
CREATE TABLE IF NOT EXISTS `inventory` (
  `Inventory_id` int(11) NOT NULL AUTO_INCREMENT,
  `Ingredient_id` int(11) NOT NULL,
  `Quantity` varchar(10) NOT NULL,
  PRIMARY KEY (`Inventory_id`),
  KEY `Ingredient_id` (`Ingredient_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`Inventory_id`, `Ingredient_id`, `Quantity`) VALUES
(1, 1, '100'),
(2, 2, '5kg'),
(3, 2, '8kg'),
(4, 3, '10kg'),
(5, 4, '3kg'),
(6, 6, '500g'),
(7, 7, '10kg'),
(8, 3, '4kg'),
(9, 8, '2litres'),
(10, 11, '4kg');

-- --------------------------------------------------------

--
-- Table structure for table `loyaltyrewards`
--

DROP TABLE IF EXISTS `loyaltyrewards`;
CREATE TABLE IF NOT EXISTS `loyaltyrewards` (
  `sno` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `reward` text NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`sno`),
  KEY `customer_id` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `orderdetails`
--

DROP TABLE IF EXISTS `orderdetails`;
CREATE TABLE IF NOT EXISTS `orderdetails` (
  `order_detail_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `food_id` int(11) NOT NULL,
  `price` float NOT NULL,
  `quantity` int(11) NOT NULL,
  PRIMARY KEY (`order_detail_id`),
  KEY `order_id` (`order_id`),
  KEY `food_id` (`food_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orderdetails`
--

INSERT INTO `orderdetails` (`order_detail_id`, `order_id`, `food_id`, `price`, `quantity`) VALUES
(1, 3, 10, 500, 5),
(3, 4, 7, 100, 4),
(4, 2, 1, 30, 1),
(5, 2, 3, 20, 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `Order_Id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `Bill_id` int(11) DEFAULT NULL,
  `order_datetime` datetime NOT NULL,
  `order_type_id` int(11) NOT NULL,
  `served_by` int(11) NOT NULL,
  PRIMARY KEY (`Order_Id`),
  KEY `customer_id` (`customer_id`),
  KEY `order_type_id` (`order_type_id`),
  KEY `served_by` (`served_by`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`Order_Id`, `customer_id`, `Bill_id`, `order_datetime`, `order_type_id`, `served_by`) VALUES
(1, 3, 5, '2021-11-01 12:16:59', 1, 7),
(2, 7, 4, '2021-10-07 19:27:00', 1, 7),
(3, 1, 1, '2021-10-20 14:43:00', 2, 11),
(4, 6, 3, '2021-10-26 10:00:00', 1, 2),
(5, 7, 2, '2021-10-02 21:20:00', 1, 10);

-- --------------------------------------------------------

--
-- Table structure for table `ordertype`
--

DROP TABLE IF EXISTS `ordertype`;
CREATE TABLE IF NOT EXISTS `ordertype` (
  `order_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` text NOT NULL,
  PRIMARY KEY (`order_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ordertype`
--

INSERT INTO `ordertype` (`order_type_id`, `type`) VALUES
(1, 'Dine In'),
(2, 'Home Delivery');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
CREATE TABLE IF NOT EXISTS `payment` (
  `payment_id` int(11) NOT NULL AUTO_INCREMENT,
  `bill_id` int(11) NOT NULL,
  `payment_amount` float NOT NULL,
  `payment_mode_id` int(11) NOT NULL,
  `payment_datetime` datetime NOT NULL,
  PRIMARY KEY (`payment_id`),
  KEY `bill_id` (`bill_id`),
  KEY `payment_mode_id` (`payment_mode_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`payment_id`, `bill_id`, `payment_amount`, `payment_mode_id`, `payment_datetime`) VALUES
(1, 1, 500, 3, '2021-10-20 15:15:01'),
(4, 3, 100, 4, '2021-10-26 21:23:38'),
(5, 4, 50, 5, '2021-10-07 19:50:00');

-- --------------------------------------------------------

--
-- Table structure for table `paymentmode`
--

DROP TABLE IF EXISTS `paymentmode`;
CREATE TABLE IF NOT EXISTS `paymentmode` (
  `Mode_id` int(11) NOT NULL AUTO_INCREMENT,
  `ModeOfPayment` varchar(25) NOT NULL,
  `Amount` float NOT NULL,
  PRIMARY KEY (`Mode_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `paymentmode`
--

INSERT INTO `paymentmode` (`Mode_id`, `ModeOfPayment`, `Amount`) VALUES
(1, 'Cash', 20),
(2, 'UPI', 40),
(3, 'Credit Card', 500),
(4, 'Cash', 100),
(5, 'Cash', 50);

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

DROP TABLE IF EXISTS `supplier`;
CREATE TABLE IF NOT EXISTS `supplier` (
  `Supplier_id` int(11) NOT NULL AUTO_INCREMENT,
  `Supplier_name` varchar(10) NOT NULL,
  `Contact_no` varchar(15) NOT NULL,
  PRIMARY KEY (`Supplier_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`Supplier_id`, `Supplier_name`, `Contact_no`) VALUES
(1, 'Michael', '11111234216'),
(2, 'Richard', '11111234226'),
(3, 'David', '11111221121'),
(4, 'Robert', '11111237826');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bill`
--
ALTER TABLE `bill`
  ADD CONSTRAINT `bill_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`Order_Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `bill_ibfk_2` FOREIGN KEY (`Bill_generated_by`) REFERENCES `employee` (`Emp_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `customerfeedback`
--
ALTER TABLE `customerfeedback`
  ADD CONSTRAINT `customer_feedback_ibfk_1` FOREIGN KEY (`Cust_id`) REFERENCES `customer` (`Customer_Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`Role_id`) REFERENCES `employee_role` (`RoleId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `food`
--
ALTER TABLE `food`
  ADD CONSTRAINT `food_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `food category` (`Category_Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `food_ibfk_2` FOREIGN KEY (`cuisine_type_id`) REFERENCES `cuisinetype` (`Cuisine_type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ingredients`
--
ALTER TABLE `ingredients`
  ADD CONSTRAINT `ingredients_ibfk_1` FOREIGN KEY (`Supplied_by`) REFERENCES `supplier` (`Supplier_id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `inventory`
--
ALTER TABLE `inventory`
  ADD CONSTRAINT `inventory_ibfk_1` FOREIGN KEY (`Ingredient_id`) REFERENCES `ingredients` (`Ingredient_id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `loyaltyrewards`
--
ALTER TABLE `loyaltyrewards`
  ADD CONSTRAINT `loyaltyrewards_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`Customer_Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD CONSTRAINT `orderdetails_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`Order_Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orderdetails_ibfk_2` FOREIGN KEY (`food_id`) REFERENCES `food` (`Food_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`Customer_Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`order_type_id`) REFERENCES `ordertype` (`order_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_ibfk_3` FOREIGN KEY (`served_by`) REFERENCES `employee` (`Emp_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`bill_id`) REFERENCES `bill` (`bill_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `payment_ibfk_3` FOREIGN KEY (`payment_mode_id`) REFERENCES `paymentmode` (`Mode_id`) ON DELETE CASCADE ON UPDATE CASCADE;
