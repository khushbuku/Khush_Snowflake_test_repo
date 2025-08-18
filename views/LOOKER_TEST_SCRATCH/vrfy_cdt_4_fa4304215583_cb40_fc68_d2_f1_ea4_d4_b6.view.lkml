# The name of this view in Looker is "Vrfy Cdt 4 Fa4304215583 Cb40 Fc68 D2 F1 Ea4 D4 B6"
view: vrfy_cdt_4_fa4304215583_cb40_fc68_d2_f1_ea4_d4_b6 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."VRFY_CDT_4FA4304215583CB40FC68D2F1EA4D4B6" ;;

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
