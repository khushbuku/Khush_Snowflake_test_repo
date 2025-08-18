# The name of this view in Looker is "Vrfy Cdt 94820 Dc6 A9 Bc05 B27 B2 D52 C73960 Eaac"
view: vrfy_cdt_94820_dc6_a9_bc05_b27_b2_d52_c73960_eaac {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."VRFY_CDT_94820DC6A9BC05B27B2D52C73960EAAC" ;;

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
