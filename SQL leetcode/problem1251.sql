# Write your MySQL query statement below

SELECT
    priceTable.product_id,
    IFNULL(ROUND(SUM(soldTable.units*priceTable.price)/SUM(soldTable.units), 2),0) as average_price

FROM 
    prices as priceTable
LEFT JOIN 
    UnitsSold as soldTable
ON
    priceTable.product_id  = soldTable.product_id
AND -- this is what changed the whole thing
    soldTable.purchase_date BETWEEN priceTable.start_date AND priceTable.end_date

GROUP BY
    priceTable.product_id;