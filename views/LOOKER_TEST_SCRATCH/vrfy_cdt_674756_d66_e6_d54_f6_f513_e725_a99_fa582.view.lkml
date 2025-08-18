# The name of this view in Looker is "Vrfy Cdt 674756 D66 E6 D54 F6 F513 E725 A99 Fa582"
view: vrfy_cdt_674756_d66_e6_d54_f6_f513_e725_a99_fa582 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."VRFY_CDT_674756D66E6D54F6F513E725A99FA582" ;;

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
