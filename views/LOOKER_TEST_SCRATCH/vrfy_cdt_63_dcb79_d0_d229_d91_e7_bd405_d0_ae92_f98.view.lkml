# The name of this view in Looker is "Vrfy Cdt 63 Dcb79 D0 D229 D91 E7 Bd405 D0 Ae92 F98"
view: vrfy_cdt_63_dcb79_d0_d229_d91_e7_bd405_d0_ae92_f98 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."VRFY_CDT_63DCB79D0D229D91E7BD405D0AE92F98" ;;

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
