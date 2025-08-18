# The name of this view in Looker is "Vrfy Cdt 45 Dbb0 Af4 Eea746988 E13155 Dff90 E8 C"
view: vrfy_cdt_45_dbb0_af4_eea746988_e13155_dff90_e8_c {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."VRFY_CDT_45DBB0AF4EEA746988E13155DFF90E8C" ;;

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
