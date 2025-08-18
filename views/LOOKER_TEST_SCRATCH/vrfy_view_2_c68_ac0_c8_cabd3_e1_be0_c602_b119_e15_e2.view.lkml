# The name of this view in Looker is "Vrfy View 2 C68 Ac0 C8 Cabd3 E1 Be0 C602 B119 E15 E2"
view: vrfy_view_2_c68_ac0_c8_cabd3_e1_be0_c602_b119_e15_e2 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."VRFY_VIEW_2C68AC0C8CABD3E1BE0C602B119E15E2" ;;

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
