# The name of this view in Looker is "Vrfy Cdt 9481 Ea4 C593927 D4371 Fe0 D5 F4 Af23 Cf"
view: vrfy_cdt_9481_ea4_c593927_d4371_fe0_d5_f4_af23_cf {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."VRFY_CDT_9481EA4C593927D4371FE0D5F4AF23CF" ;;

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
