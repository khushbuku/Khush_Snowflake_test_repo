# The name of this view in Looker is "Vrfy Cdt 237 Fd560 A7 Efa5 Db28 C4668630 F4 F666"
view: vrfy_cdt_237_fd560_a7_efa5_db28_c4668630_f4_f666 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."VRFY_CDT_237FD560A7EFA5DB28C4668630F4F666" ;;

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
