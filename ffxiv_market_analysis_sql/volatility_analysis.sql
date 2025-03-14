USE ffxiv_market;

/* Market Volatility */
SELECT i.item_name, MAX(s.price) - MIN(s.price) AS price_fluctuation
FROM sales_history s
JOIN items i ON s.item_id = i.item_id
GROUP BY i.item_name
ORDER BY price_fluctuation DESC
LIMIT 10;

/* Market Volatility for Crafted Items */
SELECT i.item_name, i.crafting_class, MAX(s.price) - MIN(s.price) AS price_fluctuation
FROM sales_history s
JOIN items i ON s.item_id = i.item_id
WHERE i.crafting_class != 'None'
GROUP BY i.item_name, i.crafting_class
ORDER BY price_fluctuation DESC
LIMIT 10;

/* Market Volatility by Category */
SELECT i.item_category, MAX(s.price) - MIN(s.price) AS price_fluctuation
FROM sales_history s
JOIN items i ON s.item_id = i.item_id
GROUP BY i.item_category
ORDER BY price_fluctuation DESC
LIMIT 10;