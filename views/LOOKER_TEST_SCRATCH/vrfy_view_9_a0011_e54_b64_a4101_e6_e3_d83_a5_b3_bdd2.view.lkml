# The name of this view in Looker is "Vrfy View 9 A0011 E54 B64 A4101 E6 E3 D83 A5 B3 Bdd2"
view: vrfy_view_9_a0011_e54_b64_a4101_e6_e3_d83_a5_b3_bdd2 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."VRFY_VIEW_9A0011E54B64A4101E6E3D83A5B3BDD2" ;;

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
