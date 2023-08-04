{%- set test = {

"columns" : 'red',
"value" : 10

} -%}

{% for key, value in test.items() %}
SELECT 
  '{{ key }}' as source, 
  COUNT(*) total_row,
  {{ value }} row_source,
  {{ value }} - COUNT(*) diff_rows,
FROM {{ key }}

{% if loop.last == false %}

UNION ALL

{% else %}

{% endif %}

{% endfor %}