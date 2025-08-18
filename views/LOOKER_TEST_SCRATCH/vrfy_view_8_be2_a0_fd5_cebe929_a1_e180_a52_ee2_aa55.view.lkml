# The name of this view in Looker is "Vrfy View 8 Be2 A0 Fd5 Cebe929 A1 E180 A52 Ee2 Aa55"
view: vrfy_view_8_be2_a0_fd5_cebe929_a1_e180_a52_ee2_aa55 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."VRFY_VIEW_8BE2A0FD5CEBE929A1E180A52EE2AA55" ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Testcol" in Explore.

  dimension: testcol {
    type: string
    sql: ${TABLE}."TESTCOL" ;;
  }
  measure: count {
    type: count
  }
}
