select  orderid as order_id,
        customer_id,
        sum(dollar_amount) as amount

from    {{ ref('stg_payments') }} t1
join    {{ ref('stg_orders') }}   t2
on (    t1.orderid = t2.order_id)    
where   t1.status = 'success'

group by order_id,
         customer_id