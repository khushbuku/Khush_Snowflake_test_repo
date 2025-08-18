# The name of this view in Looker is "Vrfy Cdt Aba9 C8 Acf74 C7 F9 Cdbe4 E71 C2 A11 Aaf9"
view: vrfy_cdt_aba9_c8_acf74_c7_f9_cdbe4_e71_c2_a11_aaf9 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."VRFY_CDT_ABA9C8ACF74C7F9CDBE4E71C2A11AAF9" ;;

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
