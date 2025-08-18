# The name of this view in Looker is "Vrfy Cdt 30 Ccb5377 E32 Ea5 E2 C866310093 D8 A36"
view: vrfy_cdt_30_ccb5377_e32_ea5_e2_c866310093_d8_a36 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."VRFY_CDT_30CCB5377E32EA5E2C866310093D8A36" ;;

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
