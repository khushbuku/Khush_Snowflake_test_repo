# The name of this view in Looker is "Vrfy Cdt Aacabb30 F5591 F2 E798393 D94 Ca0 A000"
view: vrfy_cdt_aacabb30_f5591_f2_e798393_d94_ca0_a000 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."VRFY_CDT_AACABB30F5591F2E798393D94CA0A000" ;;

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
