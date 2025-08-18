# The name of this view in Looker is "Vrfy View 3 D4 D705808829 F7 B18 E0 E3765 Bb73 D16"
view: vrfy_view_3_d4_d705808829_f7_b18_e0_e3765_bb73_d16 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."VRFY_VIEW_3D4D705808829F7B18E0E3765BB73D16" ;;

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
