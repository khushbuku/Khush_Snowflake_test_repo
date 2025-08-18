# The name of this view in Looker is "Vrfy Cdt C7442 A6 D6 B23 Bd6 Ddaf4 A6 Bbcb3 F89 E0"
view: vrfy_cdt_c7442_a6_d6_b23_bd6_ddaf4_a6_bbcb3_f89_e0 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."VRFY_CDT_C7442A6D6B23BD6DDAF4A6BBCB3F89E0" ;;

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
