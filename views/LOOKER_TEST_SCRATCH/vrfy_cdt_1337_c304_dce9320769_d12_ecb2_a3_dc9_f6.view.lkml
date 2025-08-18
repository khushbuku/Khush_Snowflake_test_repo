# The name of this view in Looker is "Vrfy Cdt 1337 C304 Dce9320769 D12 Ecb2 A3 Dc9 F6"
view: vrfy_cdt_1337_c304_dce9320769_d12_ecb2_a3_dc9_f6 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."VRFY_CDT_1337C304DCE9320769D12ECB2A3DC9F6" ;;

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
