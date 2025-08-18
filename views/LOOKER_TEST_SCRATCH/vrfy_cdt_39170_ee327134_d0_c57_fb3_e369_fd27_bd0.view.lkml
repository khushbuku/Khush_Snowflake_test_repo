# The name of this view in Looker is "Vrfy Cdt 39170 Ee327134 D0 C57 Fb3 E369 Fd27 Bd0"
view: vrfy_cdt_39170_ee327134_d0_c57_fb3_e369_fd27_bd0 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."VRFY_CDT_39170EE327134D0C57FB3E369FD27BD0" ;;

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
