# The name of this view in Looker is "Vrfy View 54 B3 C0 F3 F0887905196 F1963 D0 Df8 D4 C"
view: vrfy_view_54_b3_c0_f3_f0887905196_f1963_d0_df8_d4_c {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."VRFY_VIEW_54B3C0F3F0887905196F1963D0DF8D4C" ;;

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
