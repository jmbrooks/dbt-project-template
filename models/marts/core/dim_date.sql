{{ config(materialized='table') }}

  {% set current_time = dbt_utils.current_timestamp() %}

    select
      cast('2999-12-31' as date) as calendar_date,
      NULL as day_of_week,
      NULL as day_of_week_name,
      NULL as day_of_month,
      NULL as week_of_month,
      NULL as calendar_month,
      NULL as day_of_quarter,
      NULL as week_of_quarter,
      NULL as month_of_quarter,
      NULL as calendar_quarter,
      NULL as day_of_year,
      NULL as week_of_year,
      NULL as month_of_year,
      NULL as quarter_of_year,
      NULL as calendar_year,
      FALSE as is_leap_year,
      FALSE as is_weekday,
      FALSE as is_holiday,
      FALSE as is_workday,
      NULL as days_in_month,
      NULL as days_in_quarter,
      NULL as days_in_year,
      NULL as day_of_week_in_month,
      NULL as day_of_week_in_quarter,
      NULL as day_of_week_in_year,
      NULL as first_date_of_week,
      NULL as last_date_of_week,
      NULL as first_date_of_month,
      NULL as last_date_of_month,
      NULL as first_date_of_quarter,
      NULL as last_date_of_quarter,
      NULL as first_date_of_year,
      NULL as last_date_of_year,
      NULL as year_month,
      NULL as year_quarter,
      'Spans Multiple Dates' as custom_date_detail
    union all
    select
      cast('1900-01-01' as date) as calendar_date,
      NULL as day_of_week,
      NULL as day_of_week_name,
      NULL as day_of_month,
      NULL as week_of_month,
      NULL as calendar_month,
      NULL as day_of_quarter,
      NULL as week_of_quarter,
      NULL as month_of_quarter,
      NULL as calendar_quarter,
      NULL as day_of_year,
      NULL as week_of_year,
      NULL as month_of_year,
      NULL as quarter_of_year,
      NULL as calendar_year,
      FALSE as is_leap_year,
      FALSE as is_weekday,
      FALSE as is_holiday,
      FALSE as is_workday,
      NULL as days_in_month,
      NULL as days_in_quarter,
      NULL as days_in_year,
      NULL as day_of_week_in_month,
      NULL as day_of_week_in_quarter,
      NULL as day_of_week_in_year,
      NULL as first_date_of_week,
      NULL as last_date_of_week,
      NULL as first_date_of_month,
      NULL as last_date_of_month,
      NULL as first_date_of_quarter,
      NULL as last_date_of_quarter,
      NULL as first_date_of_year,
      NULL as last_date_of_year,
      NULL as year_month,
      NULL as year_quarter,
      'Unknown Date' as custom_date_detail
    union all
    select
      calendar_date,
      day_of_week,
      day_of_week_name,
      day_of_month,
      week_of_month,
      calendar_month,
      day_of_quarter,
      week_of_quarter,
      month_of_quarter,
      calendar_quarter,
      day_of_year,
      week_of_year,
      month_of_year,
      quarter_of_year,
      calendar_year,
      is_leap_year,
      is_weekday,
      is_holiday,
      is_workday,
      days_in_month,
      days_in_quarter,
      days_in_year,
      day_of_week_in_month,
      day_of_week_in_quarter,
      day_of_week_in_year,
      first_date_of_week,
      last_date_of_week,
      first_date_of_month,
      last_date_of_month,
      first_date_of_quarter,
      last_date_of_quarter,
      first_date_of_year,
      last_date_of_year,
      case
        when cast(month_of_year as int64) <= 9 then calendar_year || '-' || '0' || month_of_year
        else calendar_year || '-' || month_of_year
      end as year_month,
      calendar_year || '-' || calendar_quarter as year_quarter,
      NULL as custom_date_detail
    from
      {{ ref('dim_date_seed') }}
    where
      calendar_date >= '{{ var("analysis_start_date") }}'
      and calendar_date <= date(extract(year from {{ current_time }}), 12, 31)