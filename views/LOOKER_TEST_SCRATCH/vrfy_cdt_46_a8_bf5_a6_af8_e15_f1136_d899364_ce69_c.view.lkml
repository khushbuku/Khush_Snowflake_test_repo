# The name of this view in Looker is "Vrfy Cdt 46 A8 Bf5 A6 Af8 E15 F1136 D899364 Ce69 C"
view: vrfy_cdt_46_a8_bf5_a6_af8_e15_f1136_d899364_ce69_c {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."VRFY_CDT_46A8BF5A6AF8E15F1136D899364CE69C" ;;

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
