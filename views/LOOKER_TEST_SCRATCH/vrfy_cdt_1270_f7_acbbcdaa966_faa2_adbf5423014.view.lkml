# The name of this view in Looker is "Vrfy Cdt 1270 F7 Acbbcdaa966 Faa2 Adbf5423014"
view: vrfy_cdt_1270_f7_acbbcdaa966_faa2_adbf5423014 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."VRFY_CDT_1270F7ACBBCDAA966FAA2ADBF5423014" ;;

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
