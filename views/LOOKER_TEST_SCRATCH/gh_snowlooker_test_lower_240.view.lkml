# The name of this view in Looker is "Gh Snowlooker Test Lower 240"
view: gh_snowlooker_test_lower_240 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."GH_SNOWLOOKER_TEST_LOWER_240" ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Col1" in Explore.

  dimension: col1 {
    type: number
    sql: ${TABLE}."COL1" ;;
  }
  measure: count {
    type: count
  }
}
