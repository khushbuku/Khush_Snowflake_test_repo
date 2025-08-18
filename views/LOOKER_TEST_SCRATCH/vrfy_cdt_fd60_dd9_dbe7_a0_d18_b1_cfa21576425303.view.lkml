# The name of this view in Looker is "Vrfy Cdt Fd60 Dd9 Dbe7 A0 D18 B1 Cfa21576425303"
view: vrfy_cdt_fd60_dd9_dbe7_a0_d18_b1_cfa21576425303 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."VRFY_CDT_FD60DD9DBE7A0D18B1CFA21576425303" ;;

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
