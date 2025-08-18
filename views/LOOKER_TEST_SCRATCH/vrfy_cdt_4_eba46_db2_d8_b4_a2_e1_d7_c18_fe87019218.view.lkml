# The name of this view in Looker is "Vrfy Cdt 4 Eba46 Db2 D8 B4 A2 E1 D7 C18 Fe87019218"
view: vrfy_cdt_4_eba46_db2_d8_b4_a2_e1_d7_c18_fe87019218 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."VRFY_CDT_4EBA46DB2D8B4A2E1D7C18FE87019218" ;;

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
