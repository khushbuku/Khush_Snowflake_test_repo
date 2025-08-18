# The name of this view in Looker is "Vrfy View 86 D32 F6 Be0 A695 Ebedc200 F5 Ea9 B57 F2"
view: vrfy_view_86_d32_f6_be0_a695_ebedc200_f5_ea9_b57_f2 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."VRFY_VIEW_86D32F6BE0A695EBEDC200F5EA9B57F2" ;;

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
