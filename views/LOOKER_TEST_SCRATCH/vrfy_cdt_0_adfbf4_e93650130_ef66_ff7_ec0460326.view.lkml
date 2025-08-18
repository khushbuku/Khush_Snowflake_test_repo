# The name of this view in Looker is "Vrfy Cdt 0 Adfbf4 E93650130 Ef66 Ff7 Ec0460326"
view: vrfy_cdt_0_adfbf4_e93650130_ef66_ff7_ec0460326 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."VRFY_CDT_0ADFBF4E93650130EF66FF7EC0460326" ;;

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
