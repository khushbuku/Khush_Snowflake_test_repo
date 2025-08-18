# The name of this view in Looker is "Vrfy Cdt 13 Cae5058 Fc89 C37 D32316 A11 Fadbe97"
view: vrfy_cdt_13_cae5058_fc89_c37_d32316_a11_fadbe97 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."VRFY_CDT_13CAE5058FC89C37D32316A11FADBE97" ;;

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
