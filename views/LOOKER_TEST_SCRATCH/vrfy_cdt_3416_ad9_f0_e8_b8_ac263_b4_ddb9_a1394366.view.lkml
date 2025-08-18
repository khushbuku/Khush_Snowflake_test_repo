# The name of this view in Looker is "Vrfy Cdt 3416 Ad9 F0 E8 B8 Ac263 B4 Ddb9 A1394366"
view: vrfy_cdt_3416_ad9_f0_e8_b8_ac263_b4_ddb9_a1394366 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."VRFY_CDT_3416AD9F0E8B8AC263B4DDB9A1394366" ;;

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
