# The name of this view in Looker is "Vrfy Cdt Be5 Dd6 Bdbb47 De76 B73 Eff06 Dce4 D94 A"
view: vrfy_cdt_be5_dd6_bdbb47_de76_b73_eff06_dce4_d94_a {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."VRFY_CDT_BE5DD6BDBB47DE76B73EFF06DCE4D94A" ;;

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
