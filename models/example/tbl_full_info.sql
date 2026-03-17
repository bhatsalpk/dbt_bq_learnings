 select p.product_id , c.customer_name , c.customer_id , o.order_id from 
gcp-badaadata.staging.orders o 
join {{ ref("tbl_customer")}} c on o.customer_id = c.customer_id
join gcp-badaadata.staging.products p on p.product_id = o.product_id