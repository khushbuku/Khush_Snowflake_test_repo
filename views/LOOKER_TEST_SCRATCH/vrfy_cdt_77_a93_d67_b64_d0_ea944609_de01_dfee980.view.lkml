# The name of this view in Looker is "Vrfy Cdt 77 A93 D67 B64 D0 Ea944609 De01 Dfee980"
view: vrfy_cdt_77_a93_d67_b64_d0_ea944609_de01_dfee980 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."VRFY_CDT_77A93D67B64D0EA944609DE01DFEE980" ;;

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
