# Define the database connection to be used for this model.
connection: "test_snowflake"

# include all the views
include: "/views/**/*.view.lkml"

# Datagroups define a caching policy for an Explore. To learn more,
# use the Quick Help panel on the right to see documentation.

datagroup: snowflake_test_default_datagroup {
  sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: snowflake_test_default_datagroup

map_layer: my_neighborhood_layer {
  file: "/maps/output.json"}

explore: test1 {}

explore: test_snowflake {}
