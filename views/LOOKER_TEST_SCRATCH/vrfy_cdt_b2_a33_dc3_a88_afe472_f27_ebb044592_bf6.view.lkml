# The name of this view in Looker is "Vrfy Cdt B2 A33 Dc3 A88 Afe472 F27 Ebb044592 Bf6"
view: vrfy_cdt_b2_a33_dc3_a88_afe472_f27_ebb044592_bf6 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."VRFY_CDT_B2A33DC3A88AFE472F27EBB044592BF6" ;;

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
