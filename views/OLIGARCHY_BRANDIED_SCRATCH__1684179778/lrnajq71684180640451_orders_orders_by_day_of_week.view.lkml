# The name of this view in Looker is "Lrnajq71684180640451 Orders Orders By Day of Week"
view: lrnajq71684180640451_orders_orders_by_day_of_week {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "OLIGARCHY_BRANDIED_SCRATCH__1684179778"."LR$NAJQ71684180640451_ORDERS_ORDERS_BY_DAY_OF_WEEK" ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Orders Count" in Explore.

  dimension: orders_count {
    type: number
    sql: ${TABLE}."orders.count" ;;
  }

  dimension: orders_created_at_day_of_week {
    type: string
    sql: ${TABLE}."orders.created_at_day_of_week" ;;
  }

  dimension: orders_created_at_day_of_week_index {
    type: number
    sql: ${TABLE}."orders.created_at_day_of_week_index" ;;
  }

  dimension: orders_status {
    type: string
    sql: ${TABLE}."orders.status" ;;
  }
  measure: count {
    type: count
  }
}
