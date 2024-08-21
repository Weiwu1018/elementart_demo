with orders as (

    select * from {{ ref('test4_column_anomaly') }}

),

final as (

    select
    age
    from orders
)

select * from final
