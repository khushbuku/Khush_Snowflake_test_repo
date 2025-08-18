# The name of this view in Looker is "Vrfy Cdt 1 Ba22 Bec412 F8 C38 F76 Cf9 Bb5 Ac178 D7"
view: vrfy_cdt_1_ba22_bec412_f8_c38_f76_cf9_bb5_ac178_d7 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."VRFY_CDT_1BA22BEC412F8C38F76CF9BB5AC178D7" ;;

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
