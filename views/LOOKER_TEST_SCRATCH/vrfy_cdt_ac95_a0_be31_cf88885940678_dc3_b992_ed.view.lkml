# The name of this view in Looker is "Vrfy Cdt Ac95 A0 Be31 Cf88885940678 Dc3 B992 Ed"
view: vrfy_cdt_ac95_a0_be31_cf88885940678_dc3_b992_ed {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."VRFY_CDT_AC95A0BE31CF88885940678DC3B992ED" ;;

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
