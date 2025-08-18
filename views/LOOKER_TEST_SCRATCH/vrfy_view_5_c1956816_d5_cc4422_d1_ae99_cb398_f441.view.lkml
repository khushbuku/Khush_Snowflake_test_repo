# The name of this view in Looker is "Vrfy View 5 C1956816 D5 Cc4422 D1 Ae99 Cb398 F441"
view: vrfy_view_5_c1956816_d5_cc4422_d1_ae99_cb398_f441 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."VRFY_VIEW_5C1956816D5CC4422D1AE99CB398F441" ;;

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
