{% macro generate_schema_name(custom_schema_name, node) -%}

    {%- set default_schema = target.schema -%}
    {%- if custom_schema_name is none -%}

        dbt_sdowling_feature_demo

    {%- else -%}

        dbt_sdowling_feature_demo

    {%- endif -%}

{%- endmacro %}