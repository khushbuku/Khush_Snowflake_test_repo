# The name of this view in Looker is "Vrfy Cdt 7 C9425 B4162 Fa76574060 Eeb9 Bd5194 F"
view: vrfy_cdt_7_c9425_b4162_fa76574060_eeb9_bd5194_f {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."VRFY_CDT_7C9425B4162FA76574060EEB9BD5194F" ;;

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
