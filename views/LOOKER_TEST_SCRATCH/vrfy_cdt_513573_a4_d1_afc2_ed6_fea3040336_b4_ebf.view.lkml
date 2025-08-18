# The name of this view in Looker is "Vrfy Cdt 513573 A4 D1 Afc2 Ed6 Fea3040336 B4 Ebf"
view: vrfy_cdt_513573_a4_d1_afc2_ed6_fea3040336_b4_ebf {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."VRFY_CDT_513573A4D1AFC2ED6FEA3040336B4EBF" ;;

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
