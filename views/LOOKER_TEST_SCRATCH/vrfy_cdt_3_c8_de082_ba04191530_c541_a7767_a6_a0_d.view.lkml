# The name of this view in Looker is "Vrfy Cdt 3 C8 De082 Ba04191530 C541 A7767 A6 A0 D"
view: vrfy_cdt_3_c8_de082_ba04191530_c541_a7767_a6_a0_d {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."VRFY_CDT_3C8DE082BA04191530C541A7767A6A0D" ;;

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
