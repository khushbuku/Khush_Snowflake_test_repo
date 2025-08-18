# The name of this view in Looker is "Vrfy View E1 Af34 Ea5782537491 Aa8 Fafc92 A69 Cd"
view: vrfy_view_e1_af34_ea5782537491_aa8_fafc92_a69_cd {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."VRFY_VIEW_E1AF34EA5782537491AA8FAFC92A69CD" ;;

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
