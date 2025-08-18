# The name of this view in Looker is "Vrfy Cdt 2 C553 B09 Cdf1 A3 A0 C89 Ba5767 D23 D75 E"
view: vrfy_cdt_2_c553_b09_cdf1_a3_a0_c89_ba5767_d23_d75_e {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."VRFY_CDT_2C553B09CDF1A3A0C89BA5767D23D75E" ;;

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
