# The name of this view in Looker is "Vrfy View 1 Dd18 C0 Fa28 D1 E93925 Db21297 E37386"
view: vrfy_view_1_dd18_c0_fa28_d1_e93925_db21297_e37386 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."VRFY_VIEW_1DD18C0FA28D1E93925DB21297E37386" ;;

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
