# The name of this view in Looker is "Vrfy Cdt 5345097 F735 B6 B7397 C4 B2 D53 C1 Cc44 A"
view: vrfy_cdt_5345097_f735_b6_b7397_c4_b2_d53_c1_cc44_a {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."VRFY_CDT_5345097F735B6B7397C4B2D53C1CC44A" ;;

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
