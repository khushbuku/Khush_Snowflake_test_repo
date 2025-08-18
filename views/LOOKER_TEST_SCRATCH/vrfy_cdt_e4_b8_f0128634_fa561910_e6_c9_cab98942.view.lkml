# The name of this view in Looker is "Vrfy Cdt E4 B8 F0128634 Fa561910 E6 C9 Cab98942"
view: vrfy_cdt_e4_b8_f0128634_fa561910_e6_c9_cab98942 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."VRFY_CDT_E4B8F0128634FA561910E6C9CAB98942" ;;

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
