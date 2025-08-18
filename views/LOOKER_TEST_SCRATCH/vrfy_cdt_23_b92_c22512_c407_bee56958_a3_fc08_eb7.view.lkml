# The name of this view in Looker is "Vrfy Cdt 23 B92 C22512 C407 Bee56958 A3 Fc08 Eb7"
view: vrfy_cdt_23_b92_c22512_c407_bee56958_a3_fc08_eb7 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."VRFY_CDT_23B92C22512C407BEE56958A3FC08EB7" ;;

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
