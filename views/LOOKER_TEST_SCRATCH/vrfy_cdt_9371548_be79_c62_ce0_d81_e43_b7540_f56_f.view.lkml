# The name of this view in Looker is "Vrfy Cdt 9371548 Be79 C62 Ce0 D81 E43 B7540 F56 F"
view: vrfy_cdt_9371548_be79_c62_ce0_d81_e43_b7540_f56_f {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."VRFY_CDT_9371548BE79C62CE0D81E43B7540F56F" ;;

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
