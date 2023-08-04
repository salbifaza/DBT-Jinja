{%- macro aliasing (input, criteria) -%}

{%- if criteria == 'cold' -%}
CASE 
    WHEN {{ input }} IS NULL THEN 'NULL Value'
    ELSE {{ input }}
END 

{%- elif criteria == 'hot' -%}
CASE 
    WHEN {{ input }} IS NULL THEN 'NULL Value'
    ELSE {{ input }}
END 

{%- endif -%}

{%- endmacro -%}