# The name of this view in Looker is "Xf Mtr Miguel Santiago Snowflake My Pdt"
view: xf_mtr_miguel_santiago_snowflake_my_pdt {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."XF_MTR_MIGUEL_SANTIAGO_SNOWFLAKE_MY_PDT" ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Orders ID" in Explore.

  dimension: orders_id {
    type: number
    sql: ${TABLE}."orders.id" ;;
  }

  dimension: orders_order_amount {
    type: number
    sql: ${TABLE}."orders.order_amount" ;;
  }

  dimension: orders_status {
    type: string
    sql: ${TABLE}."orders.status" ;;
  }

  dimension: orders_user_id {
    type: number
    sql: ${TABLE}."orders.user_id" ;;
  }
  measure: count {
    type: count
  }
}
