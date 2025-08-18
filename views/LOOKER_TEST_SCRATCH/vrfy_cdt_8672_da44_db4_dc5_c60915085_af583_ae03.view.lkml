# The name of this view in Looker is "Vrfy Cdt 8672 Da44 Db4 Dc5 C60915085 Af583 Ae03"
view: vrfy_cdt_8672_da44_db4_dc5_c60915085_af583_ae03 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."VRFY_CDT_8672DA44DB4DC5C60915085AF583AE03" ;;

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
