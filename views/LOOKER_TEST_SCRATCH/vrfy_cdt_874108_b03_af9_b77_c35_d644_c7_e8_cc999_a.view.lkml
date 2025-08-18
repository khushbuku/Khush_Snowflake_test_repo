# The name of this view in Looker is "Vrfy Cdt 874108 B03 Af9 B77 C35 D644 C7 E8 Cc999 A"
view: vrfy_cdt_874108_b03_af9_b77_c35_d644_c7_e8_cc999_a {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."VRFY_CDT_874108B03AF9B77C35D644C7E8CC999A" ;;

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
