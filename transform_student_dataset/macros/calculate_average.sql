{% macro calculate_average(total_marks) %}
    round(({{ total_marks }} / 4), 2)
{% endmacro %}