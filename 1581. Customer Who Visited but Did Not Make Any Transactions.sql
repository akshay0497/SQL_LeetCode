# Write your MySQL query statement below
select customer_id, COUNT(Visits.visit_id) AS count_no_trans from visits
LEFT JOIN Transactions
	ON visits.visit_id = Transactions.visit_id
WHERE 
	Transactions.visit_id IS NULL
GROUP BY customer_id 
order by count_no_trans desc;
