# The name of this view in Looker is "Vrfy Cdt 62 F4 C668566 Df9 E6 A3 Aa8 E20 A3 Cfcdb6"
view: vrfy_cdt_62_f4_c668566_df9_e6_a3_aa8_e20_a3_cfcdb6 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."VRFY_CDT_62F4C668566DF9E6A3AA8E20A3CFCDB6" ;;

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
