# The name of this view in Looker is "Vrfy Cdt 2 D1 Fabe18 F8 Cc632074 E7 B4204 Df7 F34"
view: vrfy_cdt_2_d1_fabe18_f8_cc632074_e7_b4204_df7_f34 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."VRFY_CDT_2D1FABE18F8CC632074E7B4204DF7F34" ;;

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
