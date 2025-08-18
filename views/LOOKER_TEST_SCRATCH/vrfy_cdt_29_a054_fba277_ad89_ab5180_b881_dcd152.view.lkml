# The name of this view in Looker is "Vrfy Cdt 29 A054 Fba277 Ad89 Ab5180 B881 Dcd152"
view: vrfy_cdt_29_a054_fba277_ad89_ab5180_b881_dcd152 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."VRFY_CDT_29A054FBA277AD89AB5180B881DCD152" ;;

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
