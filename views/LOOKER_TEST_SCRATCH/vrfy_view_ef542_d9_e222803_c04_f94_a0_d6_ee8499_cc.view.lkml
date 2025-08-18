# The name of this view in Looker is "Vrfy View Ef542 D9 E222803 C04 F94 A0 D6 Ee8499 Cc"
view: vrfy_view_ef542_d9_e222803_c04_f94_a0_d6_ee8499_cc {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."VRFY_VIEW_EF542D9E222803C04F94A0D6EE8499CC" ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Testcol" in Explore.

  dimension: testcol {
    type: string
    sql: ${TABLE}."TESTCOL" ;;
  }
  measure: count {
    type: count
  }
}
