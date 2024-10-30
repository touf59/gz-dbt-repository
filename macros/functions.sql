{% macro calculmargin(revenue, purchase_cost) %}
    SAFE_DIVIDE({{ revenue }} - {{ purchase_cost }}, {{ revenue }})
{% endmacro %}