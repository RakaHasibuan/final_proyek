{#
    This macro returns the encoded value of the education 
#}

{% macro encode_EDUCATION(column_name) -%}
    case {{ column_name }}
        WHEN 'illiterate' THEN 1
        WHEN 'unknown' THEN 2
        WHEN 'basic.4y' THEN 3
        WHEN 'basic.6y' THEN 3
        WHEN 'basic.9y' THEN 3
        WHEN 'high.school' THEN 4
        WHEN 'professional.course' THEN 5
        WHEN 'university.degree' THEN 6
   end
{%- endmacro %}