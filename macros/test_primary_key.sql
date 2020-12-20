{% macro test_primary_key(model, column_name) %}

with validation as (

    select
        {{ column_name }} as primary_key
    from {{ model }}

),
validate_not_null as (
    -- PK Test 1: Confirm no Null values
    select
        primary_key
    from validation
    where primary_key is null

),
validate_uniqueness as (
    -- PK Test 2: Confirm no Null values
    select
        primary_key,
        count(*) as count_keys
    from validation
    group by 1
    having count_keys > 1

),
validation_errors as (
    -- Aggregate validation errors
    select
        primary_key
    from validate_not_null
    union all
    select
        primary_key
    from validate_uniqueness

)
-- If count is greater than 0, test fails
select
    count(*) as count_errors
from validation_errors

{% endmacro %}
