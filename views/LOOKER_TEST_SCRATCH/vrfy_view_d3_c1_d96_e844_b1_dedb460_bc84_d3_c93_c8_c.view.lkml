# The name of this view in Looker is "Vrfy View D3 C1 D96 E844 B1 Dedb460 Bc84 D3 C93 C8 C"
view: vrfy_view_d3_c1_d96_e844_b1_dedb460_bc84_d3_c93_c8_c {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."VRFY_VIEW_D3C1D96E844B1DEDB460BC84D3C93C8C" ;;

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
