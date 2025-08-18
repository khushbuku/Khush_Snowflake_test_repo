# The name of this view in Looker is "Vrfy View 37 D9363 Ae50 D56 Fb7 B08 D008 Cbb753 Aa"
view: vrfy_view_37_d9363_ae50_d56_fb7_b08_d008_cbb753_aa {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."VRFY_VIEW_37D9363AE50D56FB7B08D008CBB753AA" ;;

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
