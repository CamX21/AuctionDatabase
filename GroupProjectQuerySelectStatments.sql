SELECT 
	TOP 1 s.name AS Seller_Name, COUNT(i.item_id) AS Total_Items_Sold -- TOP 1 is a different version of LIMIT, only shows the first row. Then uses COUNT function to count the number of items sold by each seller and displays it as TotalItemsSold
	FROM Seller s -- Assigns s to the Seller table and specifies where data is coming from
	INNER JOIN Item i ON s.seller_id = i.owner_id -- Inner join between Seller and Item table where seller_id = owner_id
	GROUP BY s.name -- Groups results by seller name
	ORDER BY Total_Items_Sold DESC -- displays data from highest to lowest based on Total_Items_Sold
	;

-- Does the same thing but with different variables.
SELECT 
	TOP 1 B.name AS Buyer_Name, COUNT(Bid.bid_id) AS Total_Bids_Placed
	FROM Buyer B 
	INNER JOIN Bid ON B.Buyer_id = b.buyer_id 
	GROUP BY B.name 
	ORDER BY Total_Bids_Placed DESC 
	;

SELECT 
	TOP 1 I.name AS Item_Name, MAX(Bid.bid_price) AS Final_Amount --MAX function returns the largest value in the column. So the highest Bid. Then below checks if its after or before current date.
	FROM Item I
	INNER JOIN Bid ON I.item_id = Bid.item_id
	WHERE I.end_datetime < GetDate() -- had to look this one up, GetDate() just gets the current date, then I just made the condition where it only shows items if the end_datetime is less than the current date.
	GROUP BY I.name
	ORDER BY Final_Amount DESC
	;

--This is going to do the same thing but instead the end_date is going to be greater than the current date.
SELECT 
	TOP 1 I.name AS Item_Name, MAX(Bid.bid_price) AS Current_Price
	FROM Item I
	INNER JOIN Bid ON I.item_id = Bid.item_id
	WHERE I.end_datetime > GetDate() 
	GROUP BY I.name
	ORDER BY Current_Price DESC
	;

--Same code as the Highest item sold, just displays info in ASC order rather than DESC
SELECT 
	TOP 1 I.name AS Item_Name, MIN(Bid.bid_price) AS Final_Amount 
	FROM Item I
	INNER JOIN Bid ON I.item_id = Bid.Item_id
	WHERE I.end_datetime < GetDate() 
	GROUP BY I.name
	ORDER BY Final_Amount ASC
	;

--Same as the before query with selecting the highest priced item available, this just changes the MIN function and changes to ASC instead of DESC
SELECT
	TOP 1 I.name AS Item_Name, MIN(Bid.bid_price) AS Current_Price
	FROM Item I
	INNER JOIN Bid ON I.item_id = Bid.item_id
	WHERE I.end_datetime > GetDate() 
	GROUP BY I.name
	ORDER BY Current_Price ASC
	;