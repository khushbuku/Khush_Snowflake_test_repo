# The name of this view in Looker is "Vrfy Cdt D154 A6 E7 C340 E9 A5742332 C4 C6007 Fb7"
view: vrfy_cdt_d154_a6_e7_c340_e9_a5742332_c4_c6007_fb7 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."VRFY_CDT_D154A6E7C340E9A5742332C4C6007FB7" ;;

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
