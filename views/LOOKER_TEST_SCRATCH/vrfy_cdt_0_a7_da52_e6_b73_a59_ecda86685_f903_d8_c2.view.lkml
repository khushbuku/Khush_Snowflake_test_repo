# The name of this view in Looker is "Vrfy Cdt 0 A7 Da52 E6 B73 A59 Ecda86685 F903 D8 C2"
view: vrfy_cdt_0_a7_da52_e6_b73_a59_ecda86685_f903_d8_c2 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."VRFY_CDT_0A7DA52E6B73A59ECDA86685F903D8C2" ;;

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
