# The name of this view in Looker is "Vrfy Cdt 2 Fc3 C38 D6 E81358 E5 A07 F57 C19 C6 Eae5"
view: vrfy_cdt_2_fc3_c38_d6_e81358_e5_a07_f57_c19_c6_eae5 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."VRFY_CDT_2FC3C38D6E81358E5A07F57C19C6EAE5" ;;

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
