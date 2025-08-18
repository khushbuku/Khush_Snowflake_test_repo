# The name of this view in Looker is "Vrfy Cdt Cd4 Cfb7247 Bb20931 C66970 C5 Ef34 F23"
view: vrfy_cdt_cd4_cfb7247_bb20931_c66970_c5_ef34_f23 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."VRFY_CDT_CD4CFB7247BB20931C66970C5EF34F23" ;;

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
