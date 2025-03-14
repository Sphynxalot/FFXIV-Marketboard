USE ffxiv_market;

/* Most Profitable Items */
SELECT i.item_name, AVG(s.price) - MIN(m.price) AS profit_margin
FROM sales_history s
JOIN market_data m ON s.item_id = m.item_id
JOIN items i ON i.item_id = s.item_id
GROUP BY i.item_name
ORDER BY profit_margin DESC
LIMIT 25;

/* Most Profitable Crafted Items */
SELECT i.item_name, i.crafting_class, AVG(s.price) - MIN(m.price) AS profit_margin
FROM sales_history s
JOIN market_data m ON s.item_id = m.item_id
JOIN items i ON i.item_id = s.item_id
WHERE i.crafting_class != 'None'
GROUP BY i.item_name, i.crafting_class
ORDER BY profit_margin DESC
LIMIT 25;

/* Most Profitable Category */
SELECT i.item_category, AVG(s.price) - MIN(m.price) AS profit_margin
FROM sales_history s
JOIN market_data m ON s.item_id = m.item_id
JOIN items i ON i.item_id = s.item_id
GROUP BY i.item_category
ORDER BY profit_margin DESC
LIMIT 25;