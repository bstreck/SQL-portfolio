##Create your own store! Your store should sell one type or category of things. You should have a table for all the items in your store, and at least 5 columns for the kind of data you think you'd need to store. You should sell at least 15 items.

  CREATE TABLE grocery (id INTEGER PRIMARY KEY, category TEXT, item TEXT, qty INTEGER, price INTEGER);
  
  INSERT INTO grocery VALUES(1, "Produce", "Apples", 59, 1.29); 
  INSERT INTO grocery VALUES(2, 'Produce', 'Bananas', 44, 0.59);
  INSERT INTO grocery VALUES(3, 'Produce', 'Spinach', 36, 2.99);
  INSERT INTO grocery VALUES(4, "Eggs/Dairy", 'Eggs', 43, 2.99);
  INSERT INTO grocery VALUES(5, 'Eggs/Dairy', '2% Milk', 19, 3.49); 
  INSERT INTO grocery VALUES(6, 'Eggs/Dairy', 'Oat Milk', 25, 4.29); 
  INSERT INTO grocery VALUES(7, 'Canned Goods', 'Black Beans', 35, 1.29); 
  INSERT INTO grocery VALUES(8, 'Canned Goods', 'Garbanzo Beans', 25, 2.19); 
  INSERT INTO grocery VALUES(9, 'Canned Goods', 'Green Beans', 39, 1.49); 
  INSERT INTO grocery VALUES(10, 'Frozen', 'Frozen Waffles',25, 2.49);
  INSERT INTO grocery VALUES(11, 'Frozen', 'Chicken Nuggets', 14, 4.49); 
  INSERT INTO grocery VALUES(12, 'Prepped Food', 'Guacomole', 7, 3.99);
  INSERT INTO grocery VALUES(13, 'Juices', 'Orange Juice', 14, 3.29);
  INSERT INTO grocery VALUES(14, 'Juices', 'Apple Juice', 12, 4.29); 
  INSERT INTO grocery VALUES(15, 'Juices', 'Pineapple Juice', 8, 3.99);
  INSERT INTO grocery VALUES(16, 'Juices', 'Pomegranite Juice', 17, 5.69);

  SELECT * 
  FROM grocery; 

##Calulate the total number of items in each category for inventory. Order your items by the quantity in stock.
  SELECT category, SUM(qty) AS total_qty
  FROM grocery
  GROUP BY category
  ORDER BY total_qty DESC;

##Select the price total in stock for each categroy. Order by price and show at least one statistic about the items.##
  SELECT category,  price, SUM(qty) AS total_qty
  FROM grocery
  GROUP BY category
  ORDER BY price DESC;
