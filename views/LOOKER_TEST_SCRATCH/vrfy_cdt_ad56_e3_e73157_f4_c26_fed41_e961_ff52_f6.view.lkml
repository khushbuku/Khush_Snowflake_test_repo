# The name of this view in Looker is "Vrfy Cdt Ad56 E3 E73157 F4 C26 Fed41 E961 Ff52 F6"
view: vrfy_cdt_ad56_e3_e73157_f4_c26_fed41_e961_ff52_f6 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."VRFY_CDT_AD56E3E73157F4C26FED41E961FF52F6" ;;

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
