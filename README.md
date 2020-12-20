# dbt at {company_name}

Welcome to the {company_name} dbt project!

## What is dbt?

dbt is a powerful tool that represents the "T" (Transform) in an ELT data processing pipeline. dbt uses the compute power of
modern data warehouses to run transformations within your data warehouse. The reason ELT (and thus dbt) is such a strong modern
analytics design pattern is because your source data and your transformed data all live in the same place, and your business logic that defines how the source data becomes transformed data is well-defined and well-tested. It pairs particularly well
with Extract and Load tools like Fivetran, and on top of powerful yet user-friendly warehouses like Snowflake.

dbt manages all data definition statements, environment management, test execution, and schema changes for you (to name just a few) in
a version-controlled and familiar language, making it a perfect tools to allow analytics engineers to focus on insights & analytics. dbt is written using SQL, YAML and a bit of Jinja, so it shouldn't be too difficult to jump into for a data analyst or data engineer!

dbt is a great complement to BI tools as well - serving as an early transformation layer to handle data testing, database
documentation, incremental processing, complex DAG dependencies, notifications and data freshness, while the BI tool represents the
business data model, semantic layer and data visualization for business intelligence.

## dbt's Role in the {company_name} Data Stack

At {company_name}, dbt contains all the data cleansing, warehouse design and business logic as transformations (known in dbt as models) to
transform the raw data in the Snowflake data lake to the analytics-ready Snowflake data warehouse. As such, it plays a crucial role in establishing governance, data trust and surfacing analytics-ready tables to BI and other data consumers.

dbt's generated documentation also serves as a great reference point and source of truth for new and experienced data team members to
understand {company_name}'s data model, DAGs and centralized documentation on our data lake and data warehouse.

## Using the dbt Project

After first pull down the project, start by running the following:

- dbt deps
- dbt seed

This will install all dependent packages, and loading any data seeds to your dev schema in the warehouse.

The below commands are commonly used on the day-to-day when developing with dbt to QA, run and test DAGs and transformation outputs.

- dbt compile
- dbt run
- dbt test

Finally, try running the following commands to get started by viewing the project documentation:

- dbt docs generate
- dbt docs serve

A full list of commands can be found [here](https://docs.getdbt.com/reference/dbt-commands/). The `dbt run` docs in particular are worth
knowing well in order to understand how to run only certain models, rather than executing all models every time while you're developing
in dbt.

### Resources

- Check out the [Data Team Handbook](link) for more information on the full data stack, shared team scripts and a sample profiles.yml.
- Learn more about dbt [in the docs](https://docs.getdbt.com/docs/introduction)
- Check out [Discourse](https://discourse.getdbt.com/) for commonly asked questions and answers
- Join the [dbt chat](http://slack.getdbt.com/) on Slack for live discussions and support
- Check out [the blog](https://blog.getdbt.com/) for the latest news on dbt's development and best practices
