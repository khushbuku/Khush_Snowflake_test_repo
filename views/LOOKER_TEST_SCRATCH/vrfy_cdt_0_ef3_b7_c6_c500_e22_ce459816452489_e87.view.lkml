# The name of this view in Looker is "Vrfy Cdt 0 Ef3 B7 C6 C500 E22 Ce459816452489 E87"
view: vrfy_cdt_0_ef3_b7_c6_c500_e22_ce459816452489_e87 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."VRFY_CDT_0EF3B7C6C500E22CE459816452489E87" ;;

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
