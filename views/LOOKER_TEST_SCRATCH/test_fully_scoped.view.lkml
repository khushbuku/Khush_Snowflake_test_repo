# The name of this view in Looker is "Test Fully Scoped"
view: test_fully_scoped {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."TEST_FULLY_SCOPED" ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "One" in Explore.

  dimension: one {
    type: number
    sql: ${TABLE}."ONE" ;;
  }
  measure: count {
    type: count
  }
}
