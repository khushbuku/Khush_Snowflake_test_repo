# The name of this view in Looker is "Vrfy Cdt Cceb25795 F85057 F87 A52 F2230 Cbe68 D"
view: vrfy_cdt_cceb25795_f85057_f87_a52_f2230_cbe68_d {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."VRFY_CDT_CCEB25795F85057F87A52F2230CBE68D" ;;

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
