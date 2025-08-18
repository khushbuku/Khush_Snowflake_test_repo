# The name of this view in Looker is "Vrfy Cdt 6 C44 F42 Ce10 F6 E5133 Aee1 D4 Ca7 A2 E6 F"
view: vrfy_cdt_6_c44_f42_ce10_f6_e5133_aee1_d4_ca7_a2_e6_f {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."VRFY_CDT_6C44F42CE10F6E5133AEE1D4CA7A2E6F" ;;

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
