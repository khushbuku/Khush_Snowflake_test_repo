# The name of this view in Looker is "Vrfy Cdt 7 F45 Fad9982 A3 D9713480 B30 Cd9 C43 Df"
view: vrfy_cdt_7_f45_fad9982_a3_d9713480_b30_cd9_c43_df {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."VRFY_CDT_7F45FAD9982A3D9713480B30CD9C43DF" ;;

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
