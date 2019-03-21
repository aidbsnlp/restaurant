-- When an order is inserted into the order table, the database should check if the ingredients needed for the recipe are present in sufficient quantity in the inventory table. If not, the order should be rejected. Also, an order should not be permitted to start with a value for the filled column.


-- When the order table is updated so that a timestamp is added to the filled column of a tuple (denoting when the order was filled), the ingredients should be subtracted from inventory.


-- Once a timestamp has been added to the 'filled' column, it shouldn't be able to be changed.

-- verify constraint 5: check sufficient quantity
-- select *
-- from Categories
-- where not exists(
-- 	select *
-- 	from Items
-- 	where Items.ItemID = Categories.ItemID
-- );

-- -- verify constraint 4: Bids.ItemID references Items.ItemID
-- select *
-- from Bids
-- where not exists(
-- 	select *
-- 	from Items
-- 	where Items.ItemID = Bids.ItemID
-- );

-- -- verify constraint 2: Bids.UserID references Users.UserID
-- select *
-- from Bids
-- where not exists(
-- 	select *
-- 	from Users
-- 	where Users.UserID = Bids.UserID
-- );

