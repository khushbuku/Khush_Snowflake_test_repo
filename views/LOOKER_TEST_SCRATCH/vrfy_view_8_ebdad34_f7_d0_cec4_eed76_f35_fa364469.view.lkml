# The name of this view in Looker is "Vrfy View 8 Ebdad34 F7 D0 Cec4 Eed76 F35 Fa364469"
view: vrfy_view_8_ebdad34_f7_d0_cec4_eed76_f35_fa364469 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."VRFY_VIEW_8EBDAD34F7D0CEC4EED76F35FA364469" ;;

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
