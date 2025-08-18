# The name of this view in Looker is "Vrfy Cdt 304699 B0 Cb301 D98 Ae439 Bcd9 Ab2 Ecac"
view: vrfy_cdt_304699_b0_cb301_d98_ae439_bcd9_ab2_ecac {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."VRFY_CDT_304699B0CB301D98AE439BCD9AB2ECAC" ;;

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
