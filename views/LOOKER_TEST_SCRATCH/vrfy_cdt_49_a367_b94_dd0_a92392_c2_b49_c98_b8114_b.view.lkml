# The name of this view in Looker is "Vrfy Cdt 49 A367 B94 Dd0 A92392 C2 B49 C98 B8114 B"
view: vrfy_cdt_49_a367_b94_dd0_a92392_c2_b49_c98_b8114_b {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."VRFY_CDT_49A367B94DD0A92392C2B49C98B8114B" ;;

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
