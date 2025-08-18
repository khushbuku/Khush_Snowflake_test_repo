# The name of this view in Looker is "Vrfy Cdt 38418507 A4 F5 Cceca66222 Ab8 A99 A7 D5"
view: vrfy_cdt_38418507_a4_f5_cceca66222_ab8_a99_a7_d5 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."VRFY_CDT_38418507A4F5CCECA66222AB8A99A7D5" ;;

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
