{% snapshot snap_products %}

{{
    config(
        target_database = 'analytics',
        target_schema = 'dbt_cohen_snapshots',
        unique_key = 'id'

        stratergy = 'timestamp',
        updated_at = 'updated_at',
    )

}}

select * from {{ source ('jaffle_shop_ext', 'products') }}

{% endsnapshot %}