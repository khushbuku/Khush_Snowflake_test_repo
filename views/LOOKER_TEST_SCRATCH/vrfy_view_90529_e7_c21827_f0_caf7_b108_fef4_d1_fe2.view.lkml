# The name of this view in Looker is "Vrfy View 90529 E7 C21827 F0 Caf7 B108 Fef4 D1 Fe2"
view: vrfy_view_90529_e7_c21827_f0_caf7_b108_fef4_d1_fe2 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."VRFY_VIEW_90529E7C21827F0CAF7B108FEF4D1FE2" ;;

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
