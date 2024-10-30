{% macro calculmargin(revenue, tututu) %}
    SAFE_DIVIDE({{ revenue }} - {{ tututu }}, {{ revenue }})
{% endmacro %}