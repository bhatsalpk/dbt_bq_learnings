{{config(materialized= 'view')}}

 select p.product_id , c.customer_name ,  o.order_id , current_timestamp() as date_added from 
gcp-badaadata.staging.orders o 
join {{ ref("tbl_customer")}} c on o.customer_id = c.customer_id
join {{ ref("tbl_full_info")}} p on p.product_id = o.product_id