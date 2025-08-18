# The name of this view in Looker is "Vrfy View 1999 B26 Cc161 A4 Fdc275 Eee18 Dbf2323"
view: vrfy_view_1999_b26_cc161_a4_fdc275_eee18_dbf2323 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."VRFY_VIEW_1999B26CC161A4FDC275EEE18DBF2323" ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Testcol" in Explore.

  dimension: testcol {
    type: string
    sql: ${TABLE}."TESTCOL" ;;
  }
  measure: count {
    type: count
  }
}
