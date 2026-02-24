{{
    config(
        severity = 'warn',
        tags = ['source_tests']
    )
}}

SELECT 
    1
FROM
    {{source('staging','bookings')}}
WHERE
    booking_amount < 200
