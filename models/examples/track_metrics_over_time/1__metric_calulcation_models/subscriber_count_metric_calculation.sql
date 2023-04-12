{{
    config(
        materialized='view'
    )
}}

with metric_base as (
Select 
    'new_daily_subscribers' as metric_name,
    (RAND()) * 100 as metric_value,
    CURRENT_DATETIME() AS datetime_captured
    )


Select
    {{ dbt_utils.generate_surrogate_key(['metric_name', 'datetime_captured']) }} as metric_capture_id,
    *
from metric_base