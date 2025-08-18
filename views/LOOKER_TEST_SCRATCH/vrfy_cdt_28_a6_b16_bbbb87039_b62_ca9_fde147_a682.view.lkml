# The name of this view in Looker is "Vrfy Cdt 28 A6 B16 Bbbb87039 B62 Ca9 Fde147 A682"
view: vrfy_cdt_28_a6_b16_bbbb87039_b62_ca9_fde147_a682 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."VRFY_CDT_28A6B16BBBB87039B62CA9FDE147A682" ;;

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
