# The name of this view in Looker is "Xf Mixed Case Test Lower 242"
view: xf_mixed_case_test_lower_242 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."XF_MIXED_CASE_TEST_LOWER_242" ;;

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
