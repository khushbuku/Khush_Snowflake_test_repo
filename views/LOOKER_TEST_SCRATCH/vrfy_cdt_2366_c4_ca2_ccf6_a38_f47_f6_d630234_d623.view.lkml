# The name of this view in Looker is "Vrfy Cdt 2366 C4 Ca2 Ccf6 A38 F47 F6 D630234 D623"
view: vrfy_cdt_2366_c4_ca2_ccf6_a38_f47_f6_d630234_d623 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."VRFY_CDT_2366C4CA2CCF6A38F47F6D630234D623" ;;

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
