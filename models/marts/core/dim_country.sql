{{ config(materialized='table') }}

    select
      '00' as country_fips_code,
      'Unknown' as country_name,
      NULL as alpha_2_code,
      NULL as alpha_3_code,
      NULL as numeric_code,
      NULL as stanag_code,
      NULL as cc_top_level_domain,
      'Unknown' as subregion,
      NULL as continent_code,
      'Unknown' as continent_name,
      'Unknown' AS subcontinent_name
    union all
    select
      '01' as country_fips_code,
      'Multiple Countries' as country_name,
      NULL as alpha_2_code,
      NULL as alpha_3_code,
      NULL as numeric_code,
      NULL as stanag_code,
      NULL as cc_top_level_domain,
      'Potentially Multiple Subregions' as subregion,
      NULL as continent_code,
      'Potentially Multiple Continents' as continent_name,
      'Potentially Multiple Subcontinents' AS subcontinent_name
    union all
    select
      fips_code as country_fips_code,
      country_name,
      alpha_2_code,
      alpha_3_code,
      numeric_code,
      stanag_code,
      cctlds as cc_top_level_domain,
      continent_code as subregion,
      continent_name as continent_code,
      case continent_name
        when 'AF' then 'Africa'
        when 'AN' then 'Antarctica'
        when 'AS' then 'Asia'
        when 'EU' then 'Europe'
        when 'NA' then 'North America'
        when 'OC' then 'Oceania'
        when 'SA' then 'South America'
        else 'None'
      END as continent_name,
      cast(sub_continent_name as string) as subcontinent_name
    from
      {{ ref('raw_countries') }}
