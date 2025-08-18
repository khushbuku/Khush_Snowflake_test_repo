# The name of this view in Looker is "Vrfy View Ca49 Fe13 E9 A04 F3 D9 E61 Fd819 Eb8 F880"
view: vrfy_view_ca49_fe13_e9_a04_f3_d9_e61_fd819_eb8_f880 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."VRFY_VIEW_CA49FE13E9A04F3D9E61FD819EB8F880" ;;

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
