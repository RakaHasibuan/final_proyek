{#
    This macro returns the encoded value of the loan status
#}

{% macro encode_LOAN(column_name) -%}
    case {{ column_name }}
        WHEN 'unknown' THEN 1
        WHEN 'no' THEN 2
        WHEN 'yes' THEN 3
   end
{%- endmacro %}
