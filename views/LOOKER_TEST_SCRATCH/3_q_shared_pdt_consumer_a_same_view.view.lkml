# The name of this view in Looker is "3 Q Shared Pdt Consumer A Same View"
view: 3_q_shared_pdt_consumer_a_same_view {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."3Q_shared_pdt_consumer_a_same_view" ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Win Count" in Explore.

  dimension: win_count {
    type: number
    sql: ${TABLE}."WIN_COUNT" ;;
  }
  measure: count {
    type: count
  }
}
