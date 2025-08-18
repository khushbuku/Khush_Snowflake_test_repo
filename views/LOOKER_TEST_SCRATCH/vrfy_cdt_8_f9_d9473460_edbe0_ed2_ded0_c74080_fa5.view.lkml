# The name of this view in Looker is "Vrfy Cdt 8 F9 D9473460 Edbe0 Ed2 Ded0 C74080 Fa5"
view: vrfy_cdt_8_f9_d9473460_edbe0_ed2_ded0_c74080_fa5 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."VRFY_CDT_8F9D9473460EDBE0ED2DED0C74080FA5" ;;

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
