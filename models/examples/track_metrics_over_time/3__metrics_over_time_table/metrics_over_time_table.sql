{{
    config(
        materialized='incremental',
        unique_key='metric_capture_id'
    )
}}


select
    *

from {{ ref('metrics_point_in_time_table') }}

{% if is_incremental() %}

  -- this filter will only be applied on an incremental run
  where datetime_captured > (select max(datetime_captured) from {{ this }})

{% endif %}