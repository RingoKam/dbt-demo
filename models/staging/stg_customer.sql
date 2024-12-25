WITH stg_customers as (
    select 
        customer_id, 
        CONCAT(first_name, ' ', last_name) as customer_name, 
        email as email_address, 
        address as billing_address
    FROM dbt_rkam.Customer 
)
SELECT * FROM stg_customers
