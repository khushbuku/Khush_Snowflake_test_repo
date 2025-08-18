# The name of this view in Looker is "Vrfy Cdt B86 E3 C1 C8 Ac8 Ea8 Fdd2 Fb8 F71 Af5 E178"
view: vrfy_cdt_b86_e3_c1_c8_ac8_ea8_fdd2_fb8_f71_af5_e178 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."VRFY_CDT_B86E3C1C8AC8EA8FDD2FB8F71AF5E178" ;;

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
