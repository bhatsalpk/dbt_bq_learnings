 select p.product_id , c.customer_name ,  o.order_id , current_timestamp() as date_added , o.order_date,  p.date_extract , 'active' as status from 
gcp-badaadata.staging.orders o 
join {{ ref("tbl_customer")}} c on o.customer_id = c.customer_id
join {{ ref("tbl_full_info")}} p on p.product_id = o.product_id
join {{ ref("checking_lineage")}} l on o.order_id = l.order_id  