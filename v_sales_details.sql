CREATE OR REPLACE VIEW v_sales_details AS
select 
o.order_id,
o.customer_id,
o.order_status,
o.order_purchase_timestamp,
i.product_id,
replace(pcnt.product_category_name_english, '_', ' ') as category_name,
i.price as 'price net',
i.freight_value as cogs,
i.price - i.freight_value as 'total order margin'
from orders as o
left join
items as i
on o.order_id = i.order_id
left join
products as p
on i.product_id = p.product_id
left join
product_category_name_translation as pcnt
on pcnt.product_category_name = p.product_category_name;

CREATE OR REPLACE VIEW v_dim_customers AS
SELECT 
    customer_id,
    customer_unique_id,
    customer_zip_code_prefix AS zip_code,
    customer_city AS city,
    customer_state AS state
FROM customers;