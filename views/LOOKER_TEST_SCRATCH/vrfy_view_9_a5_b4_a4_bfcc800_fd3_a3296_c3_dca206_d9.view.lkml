# The name of this view in Looker is "Vrfy View 9 A5 B4 A4 Bfcc800 Fd3 A3296 C3 Dca206 D9"
view: vrfy_view_9_a5_b4_a4_bfcc800_fd3_a3296_c3_dca206_d9 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."VRFY_VIEW_9A5B4A4BFCC800FD3A3296C3DCA206D9" ;;

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
