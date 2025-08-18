# The name of this view in Looker is "Lrna2 Nh1684180471034 Orders Order Wrap Date"
view: lrna2_nh1684180471034_orders_order_wrap_date {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "OLIGARCHY_BRANDIED_SCRATCH__1684179778"."LR$NA2NH1684180471034_ORDERS_ORDER_WRAP_DATE" ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Orders Avg Amount" in Explore.

  dimension: orders_avg_amount {
    type: number
    sql: ${TABLE}."orders.avg_amount" ;;
  }

  dimension: orders_avg_amount__count {
    type: number
    sql: ${TABLE}."orders.avg_amount__count" ;;
  }

  dimension: orders_avg_amount__sum {
    type: number
    sql: ${TABLE}."orders.avg_amount__sum" ;;
  }

  dimension: orders_count {
    type: number
    sql: ${TABLE}."orders.count" ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: orders_created_at {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."orders.created_at_date" ;;
  }

  dimension: orders_max_amount {
    type: number
    sql: ${TABLE}."orders.max_amount" ;;
  }

  dimension: orders_min_amount {
    type: number
    sql: ${TABLE}."orders.min_amount" ;;
  }

  dimension: orders_status {
    type: string
    sql: ${TABLE}."orders.status" ;;
  }
  measure: count {
    type: count
  }
}
