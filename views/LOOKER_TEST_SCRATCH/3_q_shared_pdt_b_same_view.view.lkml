# The name of this view in Looker is "3 Q Shared Pdt B Same View"
view: 3_q_shared_pdt_b_same_view {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."3Q_shared_pdt_b_same_view" ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Some Num" in Explore.

  dimension: some_num {
    type: number
    sql: ${TABLE}."SOME_NUM" ;;
  }
  measure: count {
    type: count
  }
}
