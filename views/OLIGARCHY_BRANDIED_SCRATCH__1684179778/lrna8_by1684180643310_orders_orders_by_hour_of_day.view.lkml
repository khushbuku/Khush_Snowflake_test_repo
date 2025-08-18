# The name of this view in Looker is "Lrna8 By1684180643310 Orders Orders By Hour of Day"
view: lrna8_by1684180643310_orders_orders_by_hour_of_day {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "OLIGARCHY_BRANDIED_SCRATCH__1684179778"."LR$NA8BY1684180643310_ORDERS_ORDERS_BY_HOUR_OF_DAY" ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Orders Count" in Explore.

  dimension: orders_count {
    type: number
    sql: ${TABLE}."orders.count" ;;
  }

  dimension: orders_created_at_hour_of_day {
    type: number
    sql: ${TABLE}."orders.created_at_hour_of_day" ;;
  }

  dimension: orders_status {
    type: string
    sql: ${TABLE}."orders.status" ;;
  }
  measure: count {
    type: count
  }
}
