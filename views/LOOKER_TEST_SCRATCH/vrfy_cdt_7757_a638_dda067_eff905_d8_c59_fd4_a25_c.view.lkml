# The name of this view in Looker is "Vrfy Cdt 7757 A638 Dda067 Eff905 D8 C59 Fd4 A25 C"
view: vrfy_cdt_7757_a638_dda067_eff905_d8_c59_fd4_a25_c {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."VRFY_CDT_7757A638DDA067EFF905D8C59FD4A25C" ;;

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
