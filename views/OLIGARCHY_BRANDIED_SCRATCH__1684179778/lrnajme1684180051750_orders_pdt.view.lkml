# The name of this view in Looker is "Lrnajme1684180051750 Orders Pdt"
view: lrnajme1684180051750_orders_pdt {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "OLIGARCHY_BRANDIED_SCRATCH__1684179778"."LR$NAJME1684180051750_ORDERS_PDT" ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Some Rand" in Explore.

  dimension: some_rand {
    type: number
    sql: ${TABLE}."SOME_RAND" ;;
  }
  measure: count {
    type: count
  }
}
