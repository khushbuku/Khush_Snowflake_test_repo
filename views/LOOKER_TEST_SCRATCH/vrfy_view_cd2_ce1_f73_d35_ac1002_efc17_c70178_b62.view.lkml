# The name of this view in Looker is "Vrfy View Cd2 Ce1 F73 D35 Ac1002 Efc17 C70178 B62"
view: vrfy_view_cd2_ce1_f73_d35_ac1002_efc17_c70178_b62 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."VRFY_VIEW_CD2CE1F73D35AC1002EFC17C70178B62" ;;

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
