# The name of this view in Looker is "Vrfy Cdt C3505 D68 D686 Abb4 A2 Ffaf6 C9 E9 Bf9 F8"
view: vrfy_cdt_c3505_d68_d686_abb4_a2_ffaf6_c9_e9_bf9_f8 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."VRFY_CDT_C3505D68D686ABB4A2FFAF6C9E9BF9F8" ;;

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
