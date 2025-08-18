# The name of this view in Looker is "Vrfy View F3 F1 C0 Cf10 Ed6 Ff9299117 A83 E19 Ce4 E"
view: vrfy_view_f3_f1_c0_cf10_ed6_ff9299117_a83_e19_ce4_e {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."VRFY_VIEW_F3F1C0CF10ED6FF9299117A83E19CE4E" ;;

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
