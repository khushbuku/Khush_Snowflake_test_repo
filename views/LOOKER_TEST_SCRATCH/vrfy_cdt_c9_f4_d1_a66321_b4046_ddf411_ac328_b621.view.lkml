# The name of this view in Looker is "Vrfy Cdt C9 F4 D1 A66321 B4046 Ddf411 Ac328 B621"
view: vrfy_cdt_c9_f4_d1_a66321_b4046_ddf411_ac328_b621 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."VRFY_CDT_C9F4D1A66321B4046DDF411AC328B621" ;;

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
