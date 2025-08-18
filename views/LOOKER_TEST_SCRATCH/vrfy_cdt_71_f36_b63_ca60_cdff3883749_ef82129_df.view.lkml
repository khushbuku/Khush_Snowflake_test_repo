# The name of this view in Looker is "Vrfy Cdt 71 F36 B63 Ca60 Cdff3883749 Ef82129 Df"
view: vrfy_cdt_71_f36_b63_ca60_cdff3883749_ef82129_df {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."VRFY_CDT_71F36B63CA60CDFF3883749EF82129DF" ;;

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
