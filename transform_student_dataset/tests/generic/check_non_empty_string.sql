{% test not_empty_string(model, column_name) %}

    with invalid_rows as (
        select *
        from {{ model }}
        where {{ column_name }} = ''
    )
    select *
    from invalid_rows

{% endtest %}