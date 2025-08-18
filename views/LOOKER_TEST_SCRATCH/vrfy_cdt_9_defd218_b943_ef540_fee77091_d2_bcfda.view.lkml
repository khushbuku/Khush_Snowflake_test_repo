# The name of this view in Looker is "Vrfy Cdt 9 Defd218 B943 Ef540 Fee77091 D2 Bcfda"
view: vrfy_cdt_9_defd218_b943_ef540_fee77091_d2_bcfda {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."VRFY_CDT_9DEFD218B943EF540FEE77091D2BCFDA" ;;

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
