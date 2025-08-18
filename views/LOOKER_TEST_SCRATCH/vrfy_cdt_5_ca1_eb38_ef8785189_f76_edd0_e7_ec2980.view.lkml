# The name of this view in Looker is "Vrfy Cdt 5 Ca1 Eb38 Ef8785189 F76 Edd0 E7 Ec2980"
view: vrfy_cdt_5_ca1_eb38_ef8785189_f76_edd0_e7_ec2980 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."VRFY_CDT_5CA1EB38EF8785189F76EDD0E7EC2980" ;;

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
