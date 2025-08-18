# The name of this view in Looker is "Vrfy View Cb6248 Cb2 E0 Ad1483 B68 C58 B2522365 B"
view: vrfy_view_cb6248_cb2_e0_ad1483_b68_c58_b2522365_b {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."VRFY_VIEW_CB6248CB2E0AD1483B68C58B2522365B" ;;

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
