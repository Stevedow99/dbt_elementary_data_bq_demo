select
    date_trunc(order_date, MONTH) as order_month,
    sum(gross_item_sales_amount) as gross_revenue,
    region_name

from {{ ref('fct_order_items') }}
    group by 
        order_month,
        region_name
    order by 
        order_month,
        region_name