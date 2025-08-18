# The name of this view in Looker is "Vrfy View 1383 D1 F0 Ee30 Cb1 A516 D2 F265 Bf863 C7"
view: vrfy_view_1383_d1_f0_ee30_cb1_a516_d2_f265_bf863_c7 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."VRFY_VIEW_1383D1F0EE30CB1A516D2F265BF863C7" ;;

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
