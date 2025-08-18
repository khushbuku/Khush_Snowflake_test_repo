# The name of this view in Looker is "Vrfy Cdt B2 Ef23 A14437874 E73 D57 Ec74 C032 A84"
view: vrfy_cdt_b2_ef23_a14437874_e73_d57_ec74_c032_a84 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."VRFY_CDT_B2EF23A14437874E73D57EC74C032A84" ;;

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
