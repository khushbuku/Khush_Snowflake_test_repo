# The name of this view in Looker is "Vrfy Cdt F4 Ed6 A7 C496 D2071 Db2 Eb77 A705 De42 F"
view: vrfy_cdt_f4_ed6_a7_c496_d2071_db2_eb77_a705_de42_f {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."VRFY_CDT_F4ED6A7C496D2071DB2EB77A705DE42F" ;;

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
