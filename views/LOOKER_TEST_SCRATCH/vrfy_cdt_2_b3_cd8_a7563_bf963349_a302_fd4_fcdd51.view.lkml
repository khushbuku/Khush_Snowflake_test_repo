# The name of this view in Looker is "Vrfy Cdt 2 B3 Cd8 A7563 Bf963349 A302 Fd4 Fcdd51"
view: vrfy_cdt_2_b3_cd8_a7563_bf963349_a302_fd4_fcdd51 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."VRFY_CDT_2B3CD8A7563BF963349A302FD4FCDD51" ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Testcol" in Explore.

  dimension: testcol {
    type: number
    sql: ${TABLE}."TESTCOL" ;;
  }
  measure: count {
    type: count
  }
}
