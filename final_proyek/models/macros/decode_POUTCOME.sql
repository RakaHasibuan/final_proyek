{#
    This macro returns the encoded value of the poutcome column
#}

{% macro encode_POUTCOME(column_name) -%}
    case {{ column_name }}
        WHEN 'nonexistent' THEN 1
        WHEN 'failure' THEN 2
        WHEN 'success' THEN 3
   end
{%- endmacro %}