# The name of this view in Looker is "Vrfy Cdt B105 Abc5 B30 A584 C09 E42 C34 B5 A6 D302"
view: vrfy_cdt_b105_abc5_b30_a584_c09_e42_c34_b5_a6_d302 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."VRFY_CDT_B105ABC5B30A584C09E42C34B5A6D302" ;;

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
