# The name of this view in Looker is "Vrfy View 843 E9 D8 Df75025 B002 Cb21 C02 Ee59 Caa"
view: vrfy_view_843_e9_d8_df75025_b002_cb21_c02_ee59_caa {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."VRFY_VIEW_843E9D8DF75025B002CB21C02EE59CAA" ;;

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
