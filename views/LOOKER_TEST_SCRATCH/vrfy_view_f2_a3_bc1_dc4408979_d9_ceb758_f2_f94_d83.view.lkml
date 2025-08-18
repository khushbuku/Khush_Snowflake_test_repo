# The name of this view in Looker is "Vrfy View F2 A3 Bc1 Dc4408979 D9 Ceb758 F2 F94 D83"
view: vrfy_view_f2_a3_bc1_dc4408979_d9_ceb758_f2_f94_d83 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."VRFY_VIEW_F2A3BC1DC4408979D9CEB758F2F94D83" ;;

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
