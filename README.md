Welcome to the {company_name} dbt project!

### dbt at {company_name}
dbt is a powerful tool that represents the "T" (Transform) in an ELT data processing pipeline. dbt uses the compute power of
modern data warehouses to run transformations within your data warehouse. The reason ELT (and thus dbt) is such a strong modern
analytics design pattern is because your source data and your transformed data all live in the same place, and your business logic that defines how the source data becomes transformed data is well-defined and well-tested. It pairs particularly well
with Extract and Load tools like Fivetran or Stitch, and on top of powerful yet user-friendly warehouses like Snowflake and BigQuery.

dbt is a great complement to Looker - serving as an early transformation layer to handle data testing, database
documentation, incremental processing, complex DAG dependencies, notifications and data freshness, while Looker represents the
business data model, semantic layer and data visualization for business intelligence.

### Using the dbt Project

Try running the following commands:
- dbt compile
- dbt run
- dbt test
- dbt docs generate

### Resources:
- Learn more about dbt [in the docs](https://docs.getdbt.com/docs/introduction)
- Check out [Discourse](https://discourse.getdbt.com/) for commonly asked questions and answers
- Join the [chat](http://slack.getdbt.com/) on Slack for live discussions and support
- Check out [the blog](https://blog.getdbt.com/) for the latest news on dbt's development and best practices
