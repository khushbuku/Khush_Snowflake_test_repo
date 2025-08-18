# The name of this view in Looker is "Vrfy Cdt A3 B5 Fca403 D22 E74 De23 B0879 E22 Cb45"
view: vrfy_cdt_a3_b5_fca403_d22_e74_de23_b0879_e22_cb45 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."VRFY_CDT_A3B5FCA403D22E74DE23B0879E22CB45" ;;

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
