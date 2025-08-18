# The name of this view in Looker is "Vrfy Cdt 8 Bff775 C637 D0 E9 Df5 D672 F05 Eaa235 C"
view: vrfy_cdt_8_bff775_c637_d0_e9_df5_d672_f05_eaa235_c {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."VRFY_CDT_8BFF775C637D0E9DF5D672F05EAA235C" ;;

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
