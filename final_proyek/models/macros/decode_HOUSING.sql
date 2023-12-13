{#
    This macro returns the encoded value of the housing loan
#}

{% macro encode_HOUSING(column_name) -%}
    case {{ column_name }}
        WHEN 'unknown' THEN 1
        WHEN 'no' THEN 2
        WHEN 'yes' THEN 3
   end
{%- endmacro %}
