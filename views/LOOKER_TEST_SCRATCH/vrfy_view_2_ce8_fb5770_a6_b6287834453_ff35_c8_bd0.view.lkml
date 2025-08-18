# The name of this view in Looker is "Vrfy View 2 Ce8 Fb5770 A6 B6287834453 Ff35 C8 Bd0"
view: vrfy_view_2_ce8_fb5770_a6_b6287834453_ff35_c8_bd0 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."VRFY_VIEW_2CE8FB5770A6B6287834453FF35C8BD0" ;;

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
