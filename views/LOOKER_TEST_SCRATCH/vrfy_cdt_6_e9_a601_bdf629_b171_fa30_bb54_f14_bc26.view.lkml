# The name of this view in Looker is "Vrfy Cdt 6 E9 A601 Bdf629 B171 Fa30 Bb54 F14 Bc26"
view: vrfy_cdt_6_e9_a601_bdf629_b171_fa30_bb54_f14_bc26 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."VRFY_CDT_6E9A601BDF629B171FA30BB54F14BC26" ;;

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
