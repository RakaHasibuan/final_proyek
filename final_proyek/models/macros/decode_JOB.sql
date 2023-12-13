{#
    This macro returns the encoded value of the job
#}

{% macro encode_JOB(column_name) -%}
    case {{ column_name }}
        WHEN 'housemaid' THEN 1
        WHEN 'services' THEN 2
        WHEN 'admin.' THEN 3
        WHEN 'blue-collar' THEN 4
        WHEN 'technician' THEN 5
        WHEN 'retired' THEN 6
        WHEN 'management' THEN 7
        WHEN 'unemployed' THEN 8
        WHEN 'self-employed' THEN 9
        WHEN 'unknown' THEN 10
        WHEN 'entrepreneur' THEN 11
        WHEN 'student' THEN 12
    
   end
{%- endmacro %}