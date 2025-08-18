# The name of this view in Looker is "Vrfy Cdt Cb2 C2 Fe3 E0 D4 E94618 C3072 Ea0 Ebdd7 C"
view: vrfy_cdt_cb2_c2_fe3_e0_d4_e94618_c3072_ea0_ebdd7_c {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."VRFY_CDT_CB2C2FE3E0D4E94618C3072EA0EBDD7C" ;;

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
