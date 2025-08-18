# The name of this view in Looker is "Vrfy View 0 Dfccf6 Cc605 Dbd8 Ddab1 A12172 Ece7 B"
view: vrfy_view_0_dfccf6_cc605_dbd8_ddab1_a12172_ece7_b {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."VRFY_VIEW_0DFCCF6CC605DBD8DDAB1A12172ECE7B" ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Testcol" in Explore.

  dimension: testcol {
    type: string
    sql: ${TABLE}."TESTCOL" ;;
  }
  measure: count {
    type: count
  }
}
