# The name of this view in Looker is "Vrfy Cdt 182 B0 C40 Aeeafc000 A2 Da24 B22 B0 Dfa7"
view: vrfy_cdt_182_b0_c40_aeeafc000_a2_da24_b22_b0_dfa7 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."VRFY_CDT_182B0C40AEEAFC000A2DA24B22B0DFA7" ;;

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
