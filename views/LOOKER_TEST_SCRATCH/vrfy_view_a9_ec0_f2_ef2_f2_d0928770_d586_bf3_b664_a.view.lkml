# The name of this view in Looker is "Vrfy View A9 Ec0 F2 Ef2 F2 D0928770 D586 Bf3 B664 A"
view: vrfy_view_a9_ec0_f2_ef2_f2_d0928770_d586_bf3_b664_a {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."VRFY_VIEW_A9EC0F2EF2F2D0928770D586BF3B664A" ;;

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
