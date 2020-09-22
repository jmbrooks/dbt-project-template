{% docs dim_date %}

### Date Dimension
- Dimension table representing all dates (built from our analysis start date through end of 2027)
- Built on the standard calendar year, where each row corresponds to a unique calendar date
- Contains multiple timeframe helper columns, max and min date values, occurrences per month, day sequence within timeframes, etc.
 
{% enddocs %}

{% docs dim_country %}

### Countries Dimension
- Dimension table representing all countries on Earth (more to come? =O)
- Includes information on the continent, subcontinent, and classification codes of each country
 
{% enddocs %}

{% docs dim_state %}

### States Dimension
- Dimension table representing all states and provinces (currently USA only)
- Includes information on the states' U.S. division and region, and classification codes
 
{% enddocs %}