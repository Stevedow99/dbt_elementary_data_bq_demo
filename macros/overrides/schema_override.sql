{% macro generate_schema_name(custom_schema_name, node) -%}

    {%- set default_schema = target.schema -%}
    {%- if custom_schema_name is none -%}

        dbt_sdowling_feature_demo

    {%- elif custom_schema_name == 'elementary' -%}

        dbt_sdowling_feature_demo_elementary_metadata


    {%- else -%}

        dbt_sdowling_feature_demo

    {%- endif -%}

{%- endmacro %}