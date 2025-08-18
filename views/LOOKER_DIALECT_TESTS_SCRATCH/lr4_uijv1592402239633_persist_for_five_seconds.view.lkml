# The name of this view in Looker is "Lr4 Uijv1592402239633 Persist for Five Seconds"
view: lr4_uijv1592402239633_persist_for_five_seconds {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_DIALECT_TESTS_SCRATCH"."LR$4UIJV1592402239633_PERSIST_FOR_FIVE_SECONDS" ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "User Count" in Explore.

  dimension: user_count {
    type: number
    sql: ${TABLE}."USER_COUNT" ;;
  }
  measure: count {
    type: count
  }
}
