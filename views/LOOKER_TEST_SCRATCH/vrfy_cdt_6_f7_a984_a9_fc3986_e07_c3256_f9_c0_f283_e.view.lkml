# The name of this view in Looker is "Vrfy Cdt 6 F7 A984 A9 Fc3986 E07 C3256 F9 C0 F283 E"
view: vrfy_cdt_6_f7_a984_a9_fc3986_e07_c3256_f9_c0_f283_e {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."VRFY_CDT_6F7A984A9FC3986E07C3256F9C0F283E" ;;

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
