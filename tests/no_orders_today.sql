---- test to check if there are no orders for today 

select count(*) as num_of_orders_today from 
{{ ref('tbl_final_active_info')}} 
where order_date = current_date()
having count(*)>0