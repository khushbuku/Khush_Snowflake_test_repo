# The name of this view in Looker is "Test 1"
view: test_1 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST"."TEST_1" ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Test Column" in Explore.

  dimension: test_column {
    type: string
    sql: ${TABLE}."TEST_COLUMN" ;;
  }
  measure: count {
    type: count
  }
}
