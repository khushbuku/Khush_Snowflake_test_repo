# The name of this view in Looker is "Vrfy Cdt 5141 B931 Ee240 D9 Ca4 D4 Bf8 D65 D65 E13"
view: vrfy_cdt_5141_b931_ee240_d9_ca4_d4_bf8_d65_d65_e13 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."VRFY_CDT_5141B931EE240D9CA4D4BF8D65D65E13" ;;

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
