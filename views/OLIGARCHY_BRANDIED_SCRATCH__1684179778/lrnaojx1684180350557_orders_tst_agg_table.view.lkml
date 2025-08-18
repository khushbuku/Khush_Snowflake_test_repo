# The name of this view in Looker is "Lrnaojx1684180350557 Orders Tst Agg Table"
view: lrnaojx1684180350557_orders_tst_agg_table {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "OLIGARCHY_BRANDIED_SCRATCH__1684179778"."LR$NAOJX1684180350557_ORDERS_TST_AGG_TABLE" ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Orders Count" in Explore.

  dimension: orders_count {
    type: number
    sql: ${TABLE}."orders.count" ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: orders_created_at {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."orders.created_at_date" ;;
  }

  dimension: orders_status {
    type: string
    sql: ${TABLE}."orders.status" ;;
  }
  measure: count {
    type: count
  }
}
