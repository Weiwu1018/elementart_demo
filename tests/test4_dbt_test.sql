-- tests/check_record_count.sql

with actual_count as (
    select
        count(*) as actual_count
    from {{ ref('test_practice') }}
),
expected_count as (
    select 300 as expected_count
)

select
    actual_count,
    expected_count
from actual_count, expected_count
where actual_count != expected_count
