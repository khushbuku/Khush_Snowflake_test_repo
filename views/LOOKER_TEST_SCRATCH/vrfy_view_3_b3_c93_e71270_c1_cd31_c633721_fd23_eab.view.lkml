# The name of this view in Looker is "Vrfy View 3 B3 C93 E71270 C1 Cd31 C633721 Fd23 Eab"
view: vrfy_view_3_b3_c93_e71270_c1_cd31_c633721_fd23_eab {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."VRFY_VIEW_3B3C93E71270C1CD31C633721FD23EAB" ;;

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
