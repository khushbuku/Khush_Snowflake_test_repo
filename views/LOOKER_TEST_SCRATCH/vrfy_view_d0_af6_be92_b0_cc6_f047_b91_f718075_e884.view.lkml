# The name of this view in Looker is "Vrfy View D0 Af6 Be92 B0 Cc6 F047 B91 F718075 E884"
view: vrfy_view_d0_af6_be92_b0_cc6_f047_b91_f718075_e884 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."VRFY_VIEW_D0AF6BE92B0CC6F047B91F718075E884" ;;

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
