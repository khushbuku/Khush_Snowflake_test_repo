# The name of this view in Looker is "Vrfy Cdt 6 C7422107 B9 B34 Aad8 Abc00 Fcc852 Cde"
view: vrfy_cdt_6_c7422107_b9_b34_aad8_abc00_fcc852_cde {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."VRFY_CDT_6C7422107B9B34AAD8ABC00FCC852CDE" ;;

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
