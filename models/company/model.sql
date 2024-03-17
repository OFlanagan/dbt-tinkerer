with foo as (
select 
    e.employee_id
    ,e.first_name
    , e.last_name
    , ed.start_date::timestamp
    , case when ed.end_date = '9999-01-01' then CURRENT_DATE::timestamp else ed.end_date::timestamp end as end_date
from {{ ref('employees')}} as e
join {{ ref('employee_dates') }} as ed
    on e.employee_id = ed.employee_id
)
select employee_id, first_name, last_name, case when end_date - start_date > '2 year'::interval then true else false end as over_2_years
from foo