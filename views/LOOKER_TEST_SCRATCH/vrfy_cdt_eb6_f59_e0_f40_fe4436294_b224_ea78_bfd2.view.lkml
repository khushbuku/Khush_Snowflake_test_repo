# The name of this view in Looker is "Vrfy Cdt Eb6 F59 E0 F40 Fe4436294 B224 Ea78 Bfd2"
view: vrfy_cdt_eb6_f59_e0_f40_fe4436294_b224_ea78_bfd2 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."VRFY_CDT_EB6F59E0F40FE4436294B224EA78BFD2" ;;

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
