# The name of this view in Looker is "Vrfy Cdt A7 Eeebf1 C6 E91675190 E4 Aa972 Fdda66"
view: vrfy_cdt_a7_eeebf1_c6_e91675190_e4_aa972_fdda66 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."VRFY_CDT_A7EEEBF1C6E91675190E4AA972FDDA66" ;;

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
