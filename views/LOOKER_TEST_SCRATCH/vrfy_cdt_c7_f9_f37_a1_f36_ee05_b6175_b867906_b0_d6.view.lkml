# The name of this view in Looker is "Vrfy Cdt C7 F9 F37 A1 F36 Ee05 B6175 B867906 B0 D6"
view: vrfy_cdt_c7_f9_f37_a1_f36_ee05_b6175_b867906_b0_d6 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."VRFY_CDT_C7F9F37A1F36EE05B6175B867906B0D6" ;;

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
