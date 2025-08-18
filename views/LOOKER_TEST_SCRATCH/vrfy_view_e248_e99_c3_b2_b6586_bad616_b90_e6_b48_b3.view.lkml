# The name of this view in Looker is "Vrfy View E248 E99 C3 B2 B6586 Bad616 B90 E6 B48 B3"
view: vrfy_view_e248_e99_c3_b2_b6586_bad616_b90_e6_b48_b3 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."VRFY_VIEW_E248E99C3B2B6586BAD616B90E6B48B3" ;;

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
