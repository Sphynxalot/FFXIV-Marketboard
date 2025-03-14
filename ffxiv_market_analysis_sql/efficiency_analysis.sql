USE ffxiv_market;

/* Finds most profitable crafted items based on their price difference */
SELECT
	i.item_name,
    i.crafting_class,
    AVG(s.price) AS avg_selling_price,
    MIN(m.price) AS min_market_price,
    (AVG(s.price) - MIN(m.price)) AS profit_margin
FROM sales_history s
JOIN market_data m ON s.item_id = m.item_id
JOIN items i ON s.item_id = i.item_id
WHERE i.crafting_class != 'None'
GROUP BY i.item_name, i.crafting_class
HAVING profit_margin > 0
ORDER BY profit_margin DESC
LIMIT 10;

/* Finds items with a stable price */
SELECT
	i.item_name,
    i.crafting_class,
    MAX(s.price) - MIN(s.price) AS price_fluctuation,
    COUNT(s.sale_id) AS total_sales
FROM sales_history s
JOIN items i ON s.item_id = i.item_id
WHERE i.crafting_class != 'None'
GROUP BY i.item_name, i.crafting_class
HAVING total_sales > 5
	AND price_fluctuation > 0
	AND price_fluctuation < (SELECT AVG(price) * 0.2 FROM sales_history)
ORDER BY price_fluctuation ASC
LIMIT 10;

/* Find items that sell frequently */
SELECT
	i.item_name,
    i.crafting_class,
    SUM(s.quantity) AS total_sales
FROM sales_history s
JOIN items i ON s.item_id = i.item_id
WHERE i.crafting_class != 'None'
GROUP BY i.item_name, i.crafting_class
ORDER BY total_sales DESC
LIMIT 10;

/* Finds the BEST items to craft based on efficiency */
SELECT
	i.item_name,
    i.crafting_class,
    AVG(s.price) - MIN(m.price) AS profit_margin,
    MAX(s.price) - MIN(s.price) AS price_fluctuation,
    SUM(s.quantity) AS total_sales,
    ((AVG(s.price) - MIN(m.price)) * SUM(s.quantity)) / (MAX(s.price) - MIN(s.price) + 1) AS efficiency_score
FROM sales_history s
JOIN market_data m ON s.item_id = m.item_id
JOIN items i ON s.item_id = i.item_id
WHERE i.crafting_class != 'None'
GROUP BY i.item_name, i.crafting_class
HAVING profit_margin > 0
	AND price_fluctuation > 0
	AND price_fluctuation < (SELECT AVG(price) * 0.2 FROM sales_history)
    AND total_sales > (SELECT AVG(quantity) FROM sales_history)
ORDER BY efficiency_score DESC
LIMIT 10;
