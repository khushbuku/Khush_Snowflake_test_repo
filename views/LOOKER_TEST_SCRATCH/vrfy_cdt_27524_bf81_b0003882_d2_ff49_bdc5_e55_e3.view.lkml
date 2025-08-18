# The name of this view in Looker is "Vrfy Cdt 27524 Bf81 B0003882 D2 Ff49 Bdc5 E55 E3"
view: vrfy_cdt_27524_bf81_b0003882_d2_ff49_bdc5_e55_e3 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."VRFY_CDT_27524BF81B0003882D2FF49BDC5E55E3" ;;

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
