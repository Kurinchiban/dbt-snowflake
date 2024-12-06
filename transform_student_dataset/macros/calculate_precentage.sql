{% macro calculate_percentage(total_marks) %}
    round(({{ total_marks }} / 400) * 100, 0)
{% endmacro %}