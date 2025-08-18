# The name of this view in Looker is "Vrfy Cdt 32 B284 E8 Aa86 Bb16 C1 Df2660 B9964 Da4"
view: vrfy_cdt_32_b284_e8_aa86_bb16_c1_df2660_b9964_da4 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."VRFY_CDT_32B284E8AA86BB16C1DF2660B9964DA4" ;;

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
