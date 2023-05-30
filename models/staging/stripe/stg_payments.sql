select id,
       orderid,
       paymentmethod,
       status,
       amount/100 as dollar_amount,
       created,
       _batched_at
from 
dbt-tutorial.stripe.payment