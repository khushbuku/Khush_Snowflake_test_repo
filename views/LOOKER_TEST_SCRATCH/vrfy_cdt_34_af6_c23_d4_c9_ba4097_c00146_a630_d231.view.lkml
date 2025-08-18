# The name of this view in Looker is "Vrfy Cdt 34 Af6 C23 D4 C9 Ba4097 C00146 A630 D231"
view: vrfy_cdt_34_af6_c23_d4_c9_ba4097_c00146_a630_d231 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."VRFY_CDT_34AF6C23D4C9BA4097C00146A630D231" ;;

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
