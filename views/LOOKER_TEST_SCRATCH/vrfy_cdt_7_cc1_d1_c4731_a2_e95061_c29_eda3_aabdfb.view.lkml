# The name of this view in Looker is "Vrfy Cdt 7 Cc1 D1 C4731 A2 E95061 C29 Eda3 Aabdfb"
view: vrfy_cdt_7_cc1_d1_c4731_a2_e95061_c29_eda3_aabdfb {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."VRFY_CDT_7CC1D1C4731A2E95061C29EDA3AABDFB" ;;

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
