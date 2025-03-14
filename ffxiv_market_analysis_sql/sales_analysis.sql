USE ffxiv_market;

SELECT * FROM items LIMIT 5;

/* Top-Selling Items */

SELECT i.item_name, SUM(s.quantity) AS total_sold
FROM sales_history s
JOIN items i ON s.item_id = i.item_id
GROUP BY i.item_name
ORDER BY total_sold DESC
LIMIT 25;

/* Top-Selling Crafted Items */
SELECT i.item_name, i.crafting_class, SUM(s.quantity) AS total_sold
FROM sales_history s
JOIN items i ON s.item_id = i.item_id
WHERE i.crafting_class != "None"
GROUP BY i.item_name, i.crafting_class
ORDER BY total_sold DESC
LIMIT 25;

/* Top-Selling Category */
SELECT i.item_category, SUM(s.quantity) AS total_sold
FROM sales_history s
JOIN items i ON s.item_id = i.item_id
GROUP BY i.item_category
ORDER BY total_sold DESC
LIMIT 25;