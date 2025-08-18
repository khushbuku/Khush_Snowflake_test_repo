# The name of this view in Looker is "Vrfy View 97 E8 A082 B20758 Bd2591355 F2 Bf9 B6 C2"
view: vrfy_view_97_e8_a082_b20758_bd2591355_f2_bf9_b6_c2 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."VRFY_VIEW_97E8A082B20758BD2591355F2BF9B6C2" ;;

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
