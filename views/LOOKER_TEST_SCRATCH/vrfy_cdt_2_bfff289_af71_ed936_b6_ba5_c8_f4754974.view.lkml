# The name of this view in Looker is "Vrfy Cdt 2 Bfff289 Af71 Ed936 B6 Ba5 C8 F4754974"
view: vrfy_cdt_2_bfff289_af71_ed936_b6_ba5_c8_f4754974 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."VRFY_CDT_2BFFF289AF71ED936B6BA5C8F4754974" ;;

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
