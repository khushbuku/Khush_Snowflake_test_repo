# The name of this view in Looker is "Vrfy Cdt 967 Bbd2 Aca2 Faf3 E24 Affe3 B6 E60 B370"
view: vrfy_cdt_967_bbd2_aca2_faf3_e24_affe3_b6_e60_b370 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."VRFY_CDT_967BBD2ACA2FAF3E24AFFE3B6E60B370" ;;

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
