# The name of this view in Looker is "Vrfy Cdt Aea010 Cab680 E0 F4966 E85 C82385 Fcfe"
view: vrfy_cdt_aea010_cab680_e0_f4966_e85_c82385_fcfe {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."VRFY_CDT_AEA010CAB680E0F4966E85C82385FCFE" ;;

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
