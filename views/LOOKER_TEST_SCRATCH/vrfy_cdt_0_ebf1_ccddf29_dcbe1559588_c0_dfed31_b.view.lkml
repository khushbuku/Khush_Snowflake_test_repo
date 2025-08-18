# The name of this view in Looker is "Vrfy Cdt 0 Ebf1 Ccddf29 Dcbe1559588 C0 Dfed31 B"
view: vrfy_cdt_0_ebf1_ccddf29_dcbe1559588_c0_dfed31_b {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."VRFY_CDT_0EBF1CCDDF29DCBE1559588C0DFED31B" ;;

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
