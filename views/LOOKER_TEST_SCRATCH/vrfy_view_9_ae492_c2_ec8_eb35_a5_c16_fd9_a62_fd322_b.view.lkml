# The name of this view in Looker is "Vrfy View 9 Ae492 C2 Ec8 Eb35 A5 C16 Fd9 A62 Fd322 B"
view: vrfy_view_9_ae492_c2_ec8_eb35_a5_c16_fd9_a62_fd322_b {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."VRFY_VIEW_9AE492C2EC8EB35A5C16FD9A62FD322B" ;;

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
