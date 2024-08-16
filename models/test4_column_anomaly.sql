with orders as (

    select * from {{ ref('test_practice') }}

),

final as (

    select
    *
    from orders
)

select * from final
