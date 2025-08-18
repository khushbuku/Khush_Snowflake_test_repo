# The name of this view in Looker is "Vrfy Cdt 27 E0 Fa9 Ebc3305 E78088 A3 Be725 D3 B4 D"
view: vrfy_cdt_27_e0_fa9_ebc3305_e78088_a3_be725_d3_b4_d {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."VRFY_CDT_27E0FA9EBC3305E78088A3BE725D3B4D" ;;

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
