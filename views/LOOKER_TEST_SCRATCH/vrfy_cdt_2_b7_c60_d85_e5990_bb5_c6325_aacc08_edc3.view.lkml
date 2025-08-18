# The name of this view in Looker is "Vrfy Cdt 2 B7 C60 D85 E5990 Bb5 C6325 Aacc08 Edc3"
view: vrfy_cdt_2_b7_c60_d85_e5990_bb5_c6325_aacc08_edc3 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."VRFY_CDT_2B7C60D85E5990BB5C6325AACC08EDC3" ;;

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
