# The name of this view in Looker is "Vrfy Cdt 1 D6 A8607 A26 D24 Aa602 F18 B30 B8 Ba620"
view: vrfy_cdt_1_d6_a8607_a26_d24_aa602_f18_b30_b8_ba620 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."VRFY_CDT_1D6A8607A26D24AA602F18B30B8BA620" ;;

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
