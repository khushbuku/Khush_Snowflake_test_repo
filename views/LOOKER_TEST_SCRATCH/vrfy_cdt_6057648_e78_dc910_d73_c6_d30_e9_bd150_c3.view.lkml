# The name of this view in Looker is "Vrfy Cdt 6057648 E78 Dc910 D73 C6 D30 E9 Bd150 C3"
view: vrfy_cdt_6057648_e78_dc910_d73_c6_d30_e9_bd150_c3 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."VRFY_CDT_6057648E78DC910D73C6D30E9BD150C3" ;;

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
