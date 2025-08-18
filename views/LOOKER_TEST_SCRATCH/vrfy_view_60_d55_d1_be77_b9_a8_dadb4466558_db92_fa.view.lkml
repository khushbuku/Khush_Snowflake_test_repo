# The name of this view in Looker is "Vrfy View 60 D55 D1 Be77 B9 A8 Dadb4466558 Db92 Fa"
view: vrfy_view_60_d55_d1_be77_b9_a8_dadb4466558_db92_fa {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."VRFY_VIEW_60D55D1BE77B9A8DADB4466558DB92FA" ;;

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
