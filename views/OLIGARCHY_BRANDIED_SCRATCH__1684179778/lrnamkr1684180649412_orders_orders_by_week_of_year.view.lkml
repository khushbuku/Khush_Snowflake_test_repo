# The name of this view in Looker is "Lrnamkr1684180649412 Orders Orders By Week of Year"
view: lrnamkr1684180649412_orders_orders_by_week_of_year {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "OLIGARCHY_BRANDIED_SCRATCH__1684179778"."LR$NAMKR1684180649412_ORDERS_ORDERS_BY_WEEK_OF_YEAR" ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Orders Count" in Explore.

  dimension: orders_count {
    type: number
    sql: ${TABLE}."orders.count" ;;
  }

  dimension: orders_created_at_week_of_year {
    type: number
    sql: ${TABLE}."orders.created_at_week_of_year" ;;
  }

  dimension: orders_status {
    type: string
    sql: ${TABLE}."orders.status" ;;
  }
  measure: count {
    type: count
  }
}
