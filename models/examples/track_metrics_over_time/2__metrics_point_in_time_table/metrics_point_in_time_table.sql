
{{
    config(
        materialized='view'
    )
}}

-- in this case we are talking the {{ ref('new_daily_subscribers_metric_calculation') }} and {{ ref('subscriber_count_metric_calculation') }} into the union


-- get all models that end in '_metric_calculation'
{% set metric_calc_relations = dbt_utils.get_relations_by_pattern(this.schema, '%_metric_calculation') %}

-- union all of the models togeter
{{ dbt_utils.union_relations(relations = metric_calc_relations, source_column_name=none) }}