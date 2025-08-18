# The name of this view in Looker is "Vrfy Cdt 0 C02 C5 Ae950 D6022404 Ba99 E4 B821 D6 D"
view: vrfy_cdt_0_c02_c5_ae950_d6022404_ba99_e4_b821_d6_d {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."VRFY_CDT_0C02C5AE950D6022404BA99E4B821D6D" ;;

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
