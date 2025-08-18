# The name of this view in Looker is "Vrfy Cdt F61 C29 F30 D1 Af79822 A0 D39 D1 B250242"
view: vrfy_cdt_f61_c29_f30_d1_af79822_a0_d39_d1_b250242 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."VRFY_CDT_F61C29F30D1AF79822A0D39D1B250242" ;;

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
