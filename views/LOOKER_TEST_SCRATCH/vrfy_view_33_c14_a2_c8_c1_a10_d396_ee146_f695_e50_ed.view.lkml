# The name of this view in Looker is "Vrfy View 33 C14 A2 C8 C1 A10 D396 Ee146 F695 E50 Ed"
view: vrfy_view_33_c14_a2_c8_c1_a10_d396_ee146_f695_e50_ed {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."VRFY_VIEW_33C14A2C8C1A10D396EE146F695E50ED" ;;

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
