# The name of this view in Looker is "Vrfy Cdt 0 Bb0 A531 F5 Ba649 Fcad09 Bd4 Fc6 Ce2 C2"
view: vrfy_cdt_0_bb0_a531_f5_ba649_fcad09_bd4_fc6_ce2_c2 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."VRFY_CDT_0BB0A531F5BA649FCAD09BD4FC6CE2C2" ;;

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
