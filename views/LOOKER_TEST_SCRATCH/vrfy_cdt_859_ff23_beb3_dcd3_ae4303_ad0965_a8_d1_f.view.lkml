# The name of this view in Looker is "Vrfy Cdt 859 Ff23 Beb3 Dcd3 Ae4303 Ad0965 A8 D1 F"
view: vrfy_cdt_859_ff23_beb3_dcd3_ae4303_ad0965_a8_d1_f {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."VRFY_CDT_859FF23BEB3DCD3AE4303AD0965A8D1F" ;;

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
