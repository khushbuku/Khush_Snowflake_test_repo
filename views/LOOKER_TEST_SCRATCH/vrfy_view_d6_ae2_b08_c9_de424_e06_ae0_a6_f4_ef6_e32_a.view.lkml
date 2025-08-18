# The name of this view in Looker is "Vrfy View D6 Ae2 B08 C9 De424 E06 Ae0 A6 F4 Ef6 E32 A"
view: vrfy_view_d6_ae2_b08_c9_de424_e06_ae0_a6_f4_ef6_e32_a {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."VRFY_VIEW_D6AE2B08C9DE424E06AE0A6F4EF6E32A" ;;

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
