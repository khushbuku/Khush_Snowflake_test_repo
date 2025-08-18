# The name of this view in Looker is "Vrfy Cdt Dac7 Ac56 Fb497 Cd4 B236578 Bb0 F773 Dc"
view: vrfy_cdt_dac7_ac56_fb497_cd4_b236578_bb0_f773_dc {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."VRFY_CDT_DAC7AC56FB497CD4B236578BB0F773DC" ;;

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
