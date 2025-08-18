# The name of this view in Looker is "Vrfy View 29 Efb35 Ccd94 C9 Ccabc95 Db05 B2 D6825"
view: vrfy_view_29_efb35_ccd94_c9_ccabc95_db05_b2_d6825 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."VRFY_VIEW_29EFB35CCD94C9CCABC95DB05B2D6825" ;;

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
