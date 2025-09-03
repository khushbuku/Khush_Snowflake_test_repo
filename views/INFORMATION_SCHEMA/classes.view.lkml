# The name of this view in Looker is "Classes"
view: classes {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "INFORMATION_SCHEMA"."CLASSES" ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Comment" in Explore.

  # dimension: comment {
  #   type: string
  #   map_layer_name: my_neighborhood_layer
  #   sql: ${TABLE}."COMMENT" ;;
  # }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."CREATED" ;;
  }

  dimension: database_name {
    type: string
    map_layer_name:my_neighborhood_layer
    sql: ${TABLE}."DATABASE_NAME" ;;
  }

  dimension: is_service_class {
    type: string
    sql: ${TABLE}."IS_SERVICE_CLASS" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."NAME" ;;
  }

  dimension: owner {
    type: string
    sql: ${TABLE}."OWNER" ;;
  }

  dimension: owner_role_type {
    type: string
    sql: ${TABLE}."OWNER_ROLE_TYPE" ;;
  }

  dimension: schema_name {
    type: string
    sql: ${TABLE}."SCHEMA_NAME" ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}."VERSION" ;;
  }
  measure: count {
    type: count
    drill_fields: [database_name, schema_name, name]
  }
}
