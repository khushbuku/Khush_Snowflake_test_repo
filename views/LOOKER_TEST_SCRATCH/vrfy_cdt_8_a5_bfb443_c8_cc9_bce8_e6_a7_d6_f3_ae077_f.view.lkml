# The name of this view in Looker is "Vrfy Cdt 8 A5 Bfb443 C8 Cc9 Bce8 E6 A7 D6 F3 Ae077 F"
view: vrfy_cdt_8_a5_bfb443_c8_cc9_bce8_e6_a7_d6_f3_ae077_f {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."VRFY_CDT_8A5BFB443C8CC9BCE8E6A7D6F3AE077F" ;;

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
