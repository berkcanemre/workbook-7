SELECT north
/*
1. How many suppliers are there? Use a query!

SELECT
    COUNT(*) AS total_suppliers
FROM
    suppliers;

2. What is the sum of all the employee's salaries?

SELECT
    SUM(salary) AS total_salaries
FROM
    employees;

3. What is the price of the cheapest item that Northwind sells?

SELECT
    MIN(unit_price) AS cheapest_item_price
FROM
    products;

4. What is the average price of items that Northwind sells?

SELECT
    AVG(unit_price) AS average_item_price
FROM
    products;

5. What is the price of the most expensive item that Northwind sells?

    MAX(unit_price) AS most_expensive_item_price
FROM
    products;

6. What is the supplier ID of each supplier and the number of items they
supply? You can answer this query by only looking at the Products table.

SELECT
    supplier_id,
    COUNT(product_id) AS number_of_items_supplied
FROM
    products
GROUP BY
    supplier_id;

7. What is the category ID of each category and the average price of each item
in the category? You can answer this query by only looking at the Products
table.

SELECT
    category_id,
    AVG(unit_price) AS average_price_in_category
FROM
    products
GROUP BY
    category_id;

8. For suppliers that provide at least 5 items to Northwind, what is the
supplier ID of each supplier and the number of items they supply? You
can answer this query by only looking at the Products table.

SELECT
    supplier_id,
    COUNT(product_id) AS number_of_items_supplied
FROM
    products
GROUP BY
    supplier_id
HAVING
    COUNT(product_id) >= 5;

9. List the product id, product name, and inventory value (calculated by
multiplying unit price by the number of units on hand). Sort the results in
descending order by value. If two or more have the same value, order by
product name.

SELECT
    product_id,
    product_name,
    (unit_price * units_in_stock) AS inventory_value
FROM
    products
ORDER BY
    inventory_value DESC,
    product_name ASC;

*/