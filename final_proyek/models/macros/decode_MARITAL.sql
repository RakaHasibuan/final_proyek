{#
    This macro returns the encoded value of the marital status
#}

{% macro encode_MARITAL(column_name) -%}
    case {{ column_name }}
        WHEN 'married' THEN 1
        WHEN 'single' THEN 2
        WHEN 'divorced' THEN 3
        WHEN 'unknown' THEN 4
   end
{%- endmacro %}