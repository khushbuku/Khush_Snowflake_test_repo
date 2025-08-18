# The name of this view in Looker is "Vrfy Cdt 3 De1956 F49 Fa62 Fae1893242 C2986 C6 C"
view: vrfy_cdt_3_de1956_f49_fa62_fae1893242_c2986_c6_c {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."VRFY_CDT_3DE1956F49FA62FAE1893242C2986C6C" ;;

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
