# The name of this view in Looker is "Vrfy Cdt Deb62 Ebff33 Ac4 B782 A2 Fb2 E2 F2 B74 D2"
view: vrfy_cdt_deb62_ebff33_ac4_b782_a2_fb2_e2_f2_b74_d2 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."VRFY_CDT_DEB62EBFF33AC4B782A2FB2E2F2B74D2" ;;

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
