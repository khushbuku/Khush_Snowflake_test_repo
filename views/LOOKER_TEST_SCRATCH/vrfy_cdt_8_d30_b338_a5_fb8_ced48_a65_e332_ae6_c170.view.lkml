# The name of this view in Looker is "Vrfy Cdt 8 D30 B338 A5 Fb8 Ced48 A65 E332 Ae6 C170"
view: vrfy_cdt_8_d30_b338_a5_fb8_ced48_a65_e332_ae6_c170 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."VRFY_CDT_8D30B338A5FB8CED48A65E332AE6C170" ;;

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
