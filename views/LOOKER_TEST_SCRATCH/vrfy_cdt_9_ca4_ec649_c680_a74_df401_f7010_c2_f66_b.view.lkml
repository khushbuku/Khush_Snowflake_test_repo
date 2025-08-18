# The name of this view in Looker is "Vrfy Cdt 9 Ca4 Ec649 C680 A74 Df401 F7010 C2 F66 B"
view: vrfy_cdt_9_ca4_ec649_c680_a74_df401_f7010_c2_f66_b {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."VRFY_CDT_9CA4EC649C680A74DF401F7010C2F66B" ;;

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
