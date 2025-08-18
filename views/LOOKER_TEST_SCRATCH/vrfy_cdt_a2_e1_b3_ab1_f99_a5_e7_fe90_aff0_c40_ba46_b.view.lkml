# The name of this view in Looker is "Vrfy Cdt A2 E1 B3 Ab1 F99 A5 E7 Fe90 Aff0 C40 Ba46 B"
view: vrfy_cdt_a2_e1_b3_ab1_f99_a5_e7_fe90_aff0_c40_ba46_b {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."VRFY_CDT_A2E1B3AB1F99A5E7FE90AFF0C40BA46B" ;;

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
