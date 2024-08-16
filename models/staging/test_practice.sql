-- depends_on: {{ ref('customers_validation') }}

with source as (
    select * from {{ ref('test_training') }}
),

renamed as (
    select
    *
    from source
)

select * from renamed
