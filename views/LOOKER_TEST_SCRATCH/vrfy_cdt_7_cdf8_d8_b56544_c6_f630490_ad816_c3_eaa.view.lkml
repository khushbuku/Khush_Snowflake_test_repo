# The name of this view in Looker is "Vrfy Cdt 7 Cdf8 D8 B56544 C6 F630490 Ad816 C3 Eaa"
view: vrfy_cdt_7_cdf8_d8_b56544_c6_f630490_ad816_c3_eaa {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."VRFY_CDT_7CDF8D8B56544C6F630490AD816C3EAA" ;;

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
