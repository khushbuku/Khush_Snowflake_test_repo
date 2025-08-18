# The name of this view in Looker is "Vrfy Cdt 48 D208 A552 D2 A0 Ef360 A7 C2 E33555691"
view: vrfy_cdt_48_d208_a552_d2_a0_ef360_a7_c2_e33555691 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."VRFY_CDT_48D208A552D2A0EF360A7C2E33555691" ;;

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
