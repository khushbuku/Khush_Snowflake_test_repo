# The name of this view in Looker is "Vrfy Cdt 5220 E73 C4 F9 Dd5179 Ee7 Ddd070314 Abe"
view: vrfy_cdt_5220_e73_c4_f9_dd5179_ee7_ddd070314_abe {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."VRFY_CDT_5220E73C4F9DD5179EE7DDD070314ABE" ;;

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
