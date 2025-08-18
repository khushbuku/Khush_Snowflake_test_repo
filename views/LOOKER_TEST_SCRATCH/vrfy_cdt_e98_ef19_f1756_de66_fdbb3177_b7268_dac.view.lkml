# The name of this view in Looker is "Vrfy Cdt E98 Ef19 F1756 De66 Fdbb3177 B7268 Dac"
view: vrfy_cdt_e98_ef19_f1756_de66_fdbb3177_b7268_dac {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."VRFY_CDT_E98EF19F1756DE66FDBB3177B7268DAC" ;;

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
