# The name of this view in Looker is "Vrfy Cdt 114 E8 Bb7 C211 A109 Be7 Bb5 F2 Aeed0175"
view: vrfy_cdt_114_e8_bb7_c211_a109_be7_bb5_f2_aeed0175 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."VRFY_CDT_114E8BB7C211A109BE7BB5F2AEED0175" ;;

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
