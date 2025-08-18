# The name of this view in Looker is "Vrfy View Eba624 D950134 D9 C8 E906724614529 F6"
view: vrfy_view_eba624_d950134_d9_c8_e906724614529_f6 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."VRFY_VIEW_EBA624D950134D9C8E906724614529F6" ;;

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
