# The name of this view in Looker is "Vrfy Cdt F786 B5 D5 Bb35 Af16 A067219 E3565 D2 E1"
view: vrfy_cdt_f786_b5_d5_bb35_af16_a067219_e3565_d2_e1 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."VRFY_CDT_F786B5D5BB35AF16A067219E3565D2E1" ;;

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
