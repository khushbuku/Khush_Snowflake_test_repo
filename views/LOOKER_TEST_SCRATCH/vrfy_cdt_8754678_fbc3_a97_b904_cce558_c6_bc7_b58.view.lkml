# The name of this view in Looker is "Vrfy Cdt 8754678 Fbc3 A97 B904 Cce558 C6 Bc7 B58"
view: vrfy_cdt_8754678_fbc3_a97_b904_cce558_c6_bc7_b58 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."VRFY_CDT_8754678FBC3A97B904CCE558C6BC7B58" ;;

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
