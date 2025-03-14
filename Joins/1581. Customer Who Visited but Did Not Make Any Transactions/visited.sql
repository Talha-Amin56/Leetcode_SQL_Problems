# Write your MySQL query statement below
with customer_check AS(
    select v.customer_id,count(v.visit_id) as count_no_trans from visits v
    left join
    transactions t
    on v.visit_id=t.visit_id
    where transaction_id is null
    group by customer_id
)

select customer_id,count_no_trans
from customer_check;