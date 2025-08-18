# The name of this view in Looker is "Vrfy View C5 B150 Dfa742 Dd4 Ece69 F564 C6 Ce7 E36"
view: vrfy_view_c5_b150_dfa742_dd4_ece69_f564_c6_ce7_e36 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."VRFY_VIEW_C5B150DFA742DD4ECE69F564C6CE7E36" ;;

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
