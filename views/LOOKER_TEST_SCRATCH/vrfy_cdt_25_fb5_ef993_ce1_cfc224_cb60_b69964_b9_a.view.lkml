# The name of this view in Looker is "Vrfy Cdt 25 Fb5 Ef993 Ce1 Cfc224 Cb60 B69964 B9 A"
view: vrfy_cdt_25_fb5_ef993_ce1_cfc224_cb60_b69964_b9_a {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."VRFY_CDT_25FB5EF993CE1CFC224CB60B69964B9A" ;;

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
