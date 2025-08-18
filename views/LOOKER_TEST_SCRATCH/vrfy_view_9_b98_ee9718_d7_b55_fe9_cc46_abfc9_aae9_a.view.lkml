# The name of this view in Looker is "Vrfy View 9 B98 Ee9718 D7 B55 Fe9 Cc46 Abfc9 Aae9 A"
view: vrfy_view_9_b98_ee9718_d7_b55_fe9_cc46_abfc9_aae9_a {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."VRFY_VIEW_9B98EE9718D7B55FE9CC46ABFC9AAE9A" ;;

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
