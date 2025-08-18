# The name of this view in Looker is "Vrfy View Cd992 E9 D545 E6 A543 Faa0 C8 Bfcc48 Db9"
view: vrfy_view_cd992_e9_d545_e6_a543_faa0_c8_bfcc48_db9 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."VRFY_VIEW_CD992E9D545E6A543FAA0C8BFCC48DB9" ;;

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
