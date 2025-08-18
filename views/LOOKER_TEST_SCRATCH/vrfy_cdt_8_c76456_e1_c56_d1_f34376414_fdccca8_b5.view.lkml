# The name of this view in Looker is "Vrfy Cdt 8 C76456 E1 C56 D1 F34376414 Fdccca8 B5"
view: vrfy_cdt_8_c76456_e1_c56_d1_f34376414_fdccca8_b5 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."VRFY_CDT_8C76456E1C56D1F34376414FDCCCA8B5" ;;

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
