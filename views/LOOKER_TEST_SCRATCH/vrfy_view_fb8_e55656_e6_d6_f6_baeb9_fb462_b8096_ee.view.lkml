# The name of this view in Looker is "Vrfy View Fb8 E55656 E6 D6 F6 Baeb9 Fb462 B8096 Ee"
view: vrfy_view_fb8_e55656_e6_d6_f6_baeb9_fb462_b8096_ee {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."VRFY_VIEW_FB8E55656E6D6F6BAEB9FB462B8096EE" ;;

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
