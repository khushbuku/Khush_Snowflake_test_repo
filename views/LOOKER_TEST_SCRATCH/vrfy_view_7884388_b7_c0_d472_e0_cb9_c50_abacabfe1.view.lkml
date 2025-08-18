# The name of this view in Looker is "Vrfy View 7884388 B7 C0 D472 E0 Cb9 C50 Abacabfe1"
view: vrfy_view_7884388_b7_c0_d472_e0_cb9_c50_abacabfe1 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."VRFY_VIEW_7884388B7C0D472E0CB9C50ABACABFE1" ;;

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
