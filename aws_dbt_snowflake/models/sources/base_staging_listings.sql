with source as (
        select * from {{ source('staging', 'listings') }}
  ),
  renamed as (
      select
          {{ adapter.quote("LISTING_ID") }},
        {{ adapter.quote("HOST_ID") }},
        {{ adapter.quote("PROPERTY_TYPE") }},
        {{ adapter.quote("ROOM_TYPE") }},
        {{ adapter.quote("CITY") }},
        {{ adapter.quote("COUNTRY") }},
        {{ adapter.quote("ACCOMMODATES") }},
        {{ adapter.quote("BEDROOMS") }},
        {{ adapter.quote("BATHROOMS") }},
        {{ adapter.quote("PRICE_PER_NIGHT") }},
        {{ adapter.quote("CREATED_AT") }}

      from source
  )
  select * from renamed
    