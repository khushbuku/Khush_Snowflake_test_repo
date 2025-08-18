# The name of this view in Looker is "Vrfy View Ad38 D803 C508 B9 F6 Cd433 C516 Be50 Dfb"
view: vrfy_view_ad38_d803_c508_b9_f6_cd433_c516_be50_dfb {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."VRFY_VIEW_AD38D803C508B9F6CD433C516BE50DFB" ;;

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
