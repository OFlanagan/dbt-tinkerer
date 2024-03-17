{{ config(materialized='table') }}

select test
from {{ ref('model_3') }}
