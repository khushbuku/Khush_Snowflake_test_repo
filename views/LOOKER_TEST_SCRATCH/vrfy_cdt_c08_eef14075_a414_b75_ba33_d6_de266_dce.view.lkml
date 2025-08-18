# The name of this view in Looker is "Vrfy Cdt C08 Eef14075 A414 B75 Ba33 D6 De266 Dce"
view: vrfy_cdt_c08_eef14075_a414_b75_ba33_d6_de266_dce {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."VRFY_CDT_C08EEF14075A414B75BA33D6DE266DCE" ;;

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
