# The name of this view in Looker is "Vrfy Cdt C15290 E021864 B14 B73 E2 D4 Fa9 A5 C2 Fb"
view: vrfy_cdt_c15290_e021864_b14_b73_e2_d4_fa9_a5_c2_fb {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."VRFY_CDT_C15290E021864B14B73E2D4FA9A5C2FB" ;;

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
