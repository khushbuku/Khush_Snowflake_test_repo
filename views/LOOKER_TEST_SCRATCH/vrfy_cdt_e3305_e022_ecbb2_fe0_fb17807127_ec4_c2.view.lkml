# The name of this view in Looker is "Vrfy Cdt E3305 E022 Ecbb2 Fe0 Fb17807127 Ec4 C2"
view: vrfy_cdt_e3305_e022_ecbb2_fe0_fb17807127_ec4_c2 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."VRFY_CDT_E3305E022ECBB2FE0FB17807127EC4C2" ;;

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
