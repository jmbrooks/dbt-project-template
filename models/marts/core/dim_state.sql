{{ config(materialized='table') }}

    select
      -1 as state_id,
      'N/A' as state,
      'Not Applicable' as state_name,
      -1 as region_code,
      'Not Applicable' as region_name,
      -1 as division_code,
      'Not Applicable' as division_name,
      -1 as state_fips_code,
      NULL as state_gnis_code,
      NULL as functional_status,
      NULL as area_land_meters,
      NULL as area_water_meters,
      NULL as latitude,
      NULL as longitude
    union all
    select
      0 as state_id,
      'ALL' as state,
      'All States' as state_name,
      0 as region_code,
      'All Regions' as region_name,
      0 as division_code,
      'All Divisions' as division_name,
      0 as state_fips_code,
      NULL as state_gnis_code,
      NULL as functional_status,
      NULL as area_land_meters,
      NULL as area_water_meters,
      NULL as latitude,
      NULL as longitude
    union all
    select
      cast(state_geo_id as int64) as state_id,
      state,
      state_name,
      cast(region_code as int64) as region_code,
      case cast(region_code as int64)
        when 1 then 'Northeast'
        when 2 then 'Midwest'
        when 3 then 'South'
        when 4 then 'West'
        else 'None'
      end as region_name,
      cast(division_code as int64) as division_code,
      case cast(division_code as int64)
        when 1 then 'New England'
        when 2 then 'Mid-Atlantic'
        when 3 then 'East North Central'
        when 4 then 'West North Central'
        when 5 then 'South Atlantic'
        when 6 then 'East South Central'
        when 7 then 'West South Central'
        when 8 then 'Mountain'
        when 9 then 'Pacific'
        else 'None'
      end as division_name,
      cast(state_fips_code AS int64) as state_fips_code,
      state_gnis_code,
      functional_status,
      area_land_meters,
      area_water_meters,
      latitude,
      longitude
    from
      {{ ref('seed_raw_states_usa') }}
