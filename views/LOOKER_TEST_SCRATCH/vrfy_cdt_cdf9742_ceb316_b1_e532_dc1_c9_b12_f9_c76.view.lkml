# The name of this view in Looker is "Vrfy Cdt Cdf9742 Ceb316 B1 E532 Dc1 C9 B12 F9 C76"
view: vrfy_cdt_cdf9742_ceb316_b1_e532_dc1_c9_b12_f9_c76 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."VRFY_CDT_CDF9742CEB316B1E532DC1C9B12F9C76" ;;

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
