{% docs seed_dim_date %}

### Seed - Dim Date

- Raw pre-generated data to create a fully-featured date dimension table
- Raw dimension table representing all dates from start of the year 2000 through end of 2027
- Built on the standard calendar year, where each row corresponds to a unique calendar date

{% enddocs %}

{% docs seed_raw_countries %}

### Seed - Raw Countries

- Raw data for all countries, including their FIPS codes (and other codes), continent, etc.
- Raw dimension table representing all countries on earth as of 2020
- Each row corresponds to a unique country

{% enddocs %}

{% docs seed_raw_states_usa %}

### Seed - Raw States USA

- Raw data for all states and provinces in the USA, including their region & division, central latitude/longitude, and various census codes
- Each row corresponds to a unique state or province in the Unites States

{% enddocs %}

{% docs snowflake_contract_rates %}

### Seed - Snowflake Contract Rates

- Raw data for all Snowflake contract start dates, and their associated Snowflake credit rate
- This seed is a dependency for the Snowflake Spend dbt Package, to track spend & usage over time
- NOTE: This seed should be updated with a new row each time a new contract is signed with Snowflake

{% enddocs %}
