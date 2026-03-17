{% macro get_date_parts(date_column) %}
  (select struct (
    {{date_column}} as orginal_date ,
    extract(year from {{date_column}}) as year_of_order,
    extract(month from {{date_column}}) as month_of_order,
    extract(day from {{date_column}}) as day_of_order) as extract_date 
    )

{% endmacro %}