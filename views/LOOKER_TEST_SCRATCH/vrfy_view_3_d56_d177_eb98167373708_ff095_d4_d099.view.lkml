# The name of this view in Looker is "Vrfy View 3 D56 D177 Eb98167373708 Ff095 D4 D099"
view: vrfy_view_3_d56_d177_eb98167373708_ff095_d4_d099 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."VRFY_VIEW_3D56D177EB98167373708FF095D4D099" ;;

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
