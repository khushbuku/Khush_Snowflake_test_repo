# The name of this view in Looker is "Vrfy Cdt E52 Dff01 Bec60 D34 Bec59 Ec928 A10017"
view: vrfy_cdt_e52_dff01_bec60_d34_bec59_ec928_a10017 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."VRFY_CDT_E52DFF01BEC60D34BEC59EC928A10017" ;;

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
