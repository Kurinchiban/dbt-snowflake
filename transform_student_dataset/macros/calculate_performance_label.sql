{% macro calculate_performance_label(performance_score) %}
    case
        when {{ performance_score }} >= 85 then 'Excellent'
        when {{ performance_score }} >= 70 then 'Good'
        when {{ performance_score }} >= 50 then 'Average'
        else 'Needs Improvement'
    end
{% endmacro %}