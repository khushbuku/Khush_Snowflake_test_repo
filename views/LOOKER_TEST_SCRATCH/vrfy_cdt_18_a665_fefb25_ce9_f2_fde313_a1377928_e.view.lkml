# The name of this view in Looker is "Vrfy Cdt 18 A665 Fefb25 Ce9 F2 Fde313 A1377928 E"
view: vrfy_cdt_18_a665_fefb25_ce9_f2_fde313_a1377928_e {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."VRFY_CDT_18A665FEFB25CE9F2FDE313A1377928E" ;;

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
