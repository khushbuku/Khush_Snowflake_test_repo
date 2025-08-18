# The name of this view in Looker is "Vrfy Cdt 393 Cd4 Af5 Bd4612 B7 Cd6610 Bbd188 Ab9"
view: vrfy_cdt_393_cd4_af5_bd4612_b7_cd6610_bbd188_ab9 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."VRFY_CDT_393CD4AF5BD4612B7CD6610BBD188AB9" ;;

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
