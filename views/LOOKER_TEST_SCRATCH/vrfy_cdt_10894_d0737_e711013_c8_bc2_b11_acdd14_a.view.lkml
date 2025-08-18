# The name of this view in Looker is "Vrfy Cdt 10894 D0737 E711013 C8 Bc2 B11 Acdd14 A"
view: vrfy_cdt_10894_d0737_e711013_c8_bc2_b11_acdd14_a {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."VRFY_CDT_10894D0737E711013C8BC2B11ACDD14A" ;;

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
