# The name of this view in Looker is "Vrfy Cdt Ea569 D0 E0 B92 Aec2 B61 E03 Bfa59 A8096"
view: vrfy_cdt_ea569_d0_e0_b92_aec2_b61_e03_bfa59_a8096 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."VRFY_CDT_EA569D0E0B92AEC2B61E03BFA59A8096" ;;

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
