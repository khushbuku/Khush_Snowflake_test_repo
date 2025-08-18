# The name of this view in Looker is "Vrfy Cdt 3 A59 C7 A5 E9 Bbb068 A92 C1 A93 C76 A519 E"
view: vrfy_cdt_3_a59_c7_a5_e9_bbb068_a92_c1_a93_c76_a519_e {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."VRFY_CDT_3A59C7A5E9BBB068A92C1A93C76A519E" ;;

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
