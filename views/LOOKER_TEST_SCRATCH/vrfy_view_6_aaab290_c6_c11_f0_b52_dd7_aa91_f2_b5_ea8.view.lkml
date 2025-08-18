# The name of this view in Looker is "Vrfy View 6 Aaab290 C6 C11 F0 B52 Dd7 Aa91 F2 B5 Ea8"
view: vrfy_view_6_aaab290_c6_c11_f0_b52_dd7_aa91_f2_b5_ea8 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."VRFY_VIEW_6AAAB290C6C11F0B52DD7AA91F2B5EA8" ;;

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
