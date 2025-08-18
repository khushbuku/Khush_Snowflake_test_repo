# The name of this view in Looker is "Mtr"
view: mtr {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."MTR" ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Orders Count" in Explore.

  dimension: orders_count {
    type: number
    sql: ${TABLE}."orders.count" ;;
  }

  dimension: orders_count_orders {
    type: number
    sql: ${TABLE}."orders.count_orders" ;;
  }

  dimension: orders_count_orders0 {
    type: number
    sql: ${TABLE}."orders.count_orders0" ;;
  }

  dimension: orders_count_orders__hll {
    type: string
    sql: ${TABLE}."orders.count_orders__hll" ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: orders_created_month {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."orders.created_month" ;;
  }

  dimension: orders_order_amount {
    type: number
    sql: ${TABLE}."orders.order_amount" ;;
  }

  dimension: orders_status {
    type: string
    sql: ${TABLE}."orders.status" ;;
  }
  measure: count {
    type: count
  }
}
