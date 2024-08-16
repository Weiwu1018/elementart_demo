-- depends_on: {{ ref('test_dataset') }}

with source as (
    select * from {{ ref('test_dataset') }}
),

renamed as (
    select
    *
    from source
)

select * from renamed
