# The name of this view in Looker is "Vrfy View Ab21013158 C8 F6 Ae11282 Cb5 Bcec7 Ea2"
view: vrfy_view_ab21013158_c8_f6_ae11282_cb5_bcec7_ea2 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."VRFY_VIEW_AB21013158C8F6AE11282CB5BCEC7EA2" ;;

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
