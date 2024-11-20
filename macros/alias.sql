{% macro alias(expression, alias) %}
  {{ expression }} AS {{ alias }}
{% endmacro %}
