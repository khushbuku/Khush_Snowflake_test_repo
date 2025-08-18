# The name of this view in Looker is "Vrfy Cdt 3 B7 Dd7 A1 Cf4 C06265 E6 D7592 De406 Ac1"
view: vrfy_cdt_3_b7_dd7_a1_cf4_c06265_e6_d7592_de406_ac1 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."VRFY_CDT_3B7DD7A1CF4C06265E6D7592DE406AC1" ;;

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
