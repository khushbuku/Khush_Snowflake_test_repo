# The name of this view in Looker is "Vrfy Cdt D0 F7 D18 Fd444 Fa1 A2 Fe3 Ec6 E9 C8 F5563"
view: vrfy_cdt_d0_f7_d18_fd444_fa1_a2_fe3_ec6_e9_c8_f5563 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."VRFY_CDT_D0F7D18FD444FA1A2FE3EC6E9C8F5563" ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Testcol" in Explore.

  dimension: testcol {
    type: number
    sql: ${TABLE}."TESTCOL" ;;
  }
  measure: count {
    type: count
  }
}
