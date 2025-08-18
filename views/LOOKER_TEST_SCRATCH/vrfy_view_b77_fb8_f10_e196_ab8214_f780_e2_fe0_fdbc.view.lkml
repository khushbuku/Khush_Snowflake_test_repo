# The name of this view in Looker is "Vrfy View B77 Fb8 F10 E196 Ab8214 F780 E2 Fe0 Fdbc"
view: vrfy_view_b77_fb8_f10_e196_ab8214_f780_e2_fe0_fdbc {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."VRFY_VIEW_B77FB8F10E196AB8214F780E2FE0FDBC" ;;

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
