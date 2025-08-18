# The name of this view in Looker is "Vrfy View 5 C8 E0 A918 Cbcace705 F7 Be816 Bc49 B62"
view: vrfy_view_5_c8_e0_a918_cbcace705_f7_be816_bc49_b62 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."VRFY_VIEW_5C8E0A918CBCACE705F7BE816BC49B62" ;;

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
