# The name of this view in Looker is "Swett Del"
view: swett_del {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."SWETT_DEL" ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: orders_created {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."orders.created_date" ;;
  }
    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Orders Status" in Explore.

  dimension: orders_status {
    type: string
    sql: ${TABLE}."orders.status" ;;
  }

  dimension: orders_the_count {
    type: number
    sql: ${TABLE}."orders.the_count" ;;
  }

  dimension: orders_the_count0 {
    type: number
    sql: ${TABLE}."orders.the_count0" ;;
  }

  dimension: orders_the_count__hll {
    type: string
    sql: ${TABLE}."orders.the_count__hll" ;;
  }

  dimension: users_age {
    type: number
    sql: ${TABLE}."users.age" ;;
  }
  measure: count {
    type: count
  }
}
