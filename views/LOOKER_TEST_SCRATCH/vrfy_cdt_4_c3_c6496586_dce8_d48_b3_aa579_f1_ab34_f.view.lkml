# The name of this view in Looker is "Vrfy Cdt 4 C3 C6496586 Dce8 D48 B3 Aa579 F1 Ab34 F"
view: vrfy_cdt_4_c3_c6496586_dce8_d48_b3_aa579_f1_ab34_f {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."VRFY_CDT_4C3C6496586DCE8D48B3AA579F1AB34F" ;;

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
