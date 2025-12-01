SELECT
    COUNT(*) AS total_transacion,
    MIN(date) AS earliest_date,
    MAX(date) AS latest_date,
    AVG(price) AS average_price,
    AVG(discount_percentage) AS average_discount_percentage,
    SUM(nett_sales) AS total_net_sales,
    SUM(nett_profit) AS total_net_profit,
    AVG(rating_transaksi) AS average_transaction_rating,
    AVG(rating_cabang) AS average_branch_rating,
    branch_name,
    COUNT(DISTINCT customer_name) AS total_customers,
FROM `Kimia_Farma.Analysis`
GROUP BY branch_name
ORDER BY total_net_sales DESC;
