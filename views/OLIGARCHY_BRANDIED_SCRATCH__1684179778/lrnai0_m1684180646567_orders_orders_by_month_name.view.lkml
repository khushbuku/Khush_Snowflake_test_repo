# The name of this view in Looker is "Lrnai0 M1684180646567 Orders Orders By Month Name"
view: lrnai0_m1684180646567_orders_orders_by_month_name {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "OLIGARCHY_BRANDIED_SCRATCH__1684179778"."LR$NAI0M1684180646567_ORDERS_ORDERS_BY_MONTH_NAME" ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Orders Count" in Explore.

  dimension: orders_count {
    type: number
    sql: ${TABLE}."orders.count" ;;
  }

  dimension: orders_created_at_month_name {
    type: string
    sql: ${TABLE}."orders.created_at_month_name" ;;
  }

  dimension: orders_created_at_month_num {
    type: number
    sql: ${TABLE}."orders.created_at_month_num" ;;
  }

  dimension: orders_status {
    type: string
    sql: ${TABLE}."orders.status" ;;
  }
  measure: count {
    type: count
    drill_fields: [orders_created_at_month_name]
  }
}
