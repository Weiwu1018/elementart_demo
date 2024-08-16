with orders as (

    select * from {{ ref('test_volume') }}

),

final as (

    select
    *
    from orders
)

select * from final
