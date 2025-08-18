# The name of this view in Looker is "Vrfy Cdt 8 Cb71 E2 C741 E86 E1 A74 Fe3159 D8561 D7"
view: vrfy_cdt_8_cb71_e2_c741_e86_e1_a74_fe3159_d8561_d7 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."VRFY_CDT_8CB71E2C741E86E1A74FE3159D8561D7" ;;

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
