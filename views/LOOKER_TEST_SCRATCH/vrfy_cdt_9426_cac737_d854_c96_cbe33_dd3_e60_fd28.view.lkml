# The name of this view in Looker is "Vrfy Cdt 9426 Cac737 D854 C96 Cbe33 Dd3 E60 Fd28"
view: vrfy_cdt_9426_cac737_d854_c96_cbe33_dd3_e60_fd28 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."VRFY_CDT_9426CAC737D854C96CBE33DD3E60FD28" ;;

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
