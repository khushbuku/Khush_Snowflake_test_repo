# The name of this view in Looker is "Vrfy Cdt 56107 D66 E5 F006 D6 E3 D499 Feb06 C9 Bc2"
view: vrfy_cdt_56107_d66_e5_f006_d6_e3_d499_feb06_c9_bc2 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."VRFY_CDT_56107D66E5F006D6E3D499FEB06C9BC2" ;;

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
