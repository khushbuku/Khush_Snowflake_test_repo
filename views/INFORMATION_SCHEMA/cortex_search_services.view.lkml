# The name of this view in Looker is "Cortex Search Services"
view: cortex_search_services {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "INFORMATION_SCHEMA"."CORTEX_SEARCH_SERVICES" ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Attribute Columns" in Explore.

  dimension: attribute_columns {
    type: string
    sql: ${TABLE}."ATTRIBUTE_COLUMNS" ;;
  }

  dimension: columns {
    type: string
    sql: ${TABLE}."COLUMNS" ;;
  }

  dimension: comment {
    type: string
    sql: ${TABLE}."COMMENT" ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."CREATED" ;;
  }

  dimension_group: data_timestamp {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."DATA_TIMESTAMP" ;;
  }

  dimension: definition {
    type: string
    sql: ${TABLE}."DEFINITION" ;;
  }

  dimension: embedding_model {
    type: string
    sql: ${TABLE}."EMBEDDING_MODEL" ;;
  }

  dimension: indexing_error {
    type: string
    sql: ${TABLE}."INDEXING_ERROR" ;;
  }

  dimension: indexing_state {
    type: string
    sql: ${TABLE}."INDEXING_STATE" ;;
  }

  dimension: owner {
    type: string
    sql: ${TABLE}."OWNER" ;;
  }

  dimension: owner_role_type {
    type: string
    sql: ${TABLE}."OWNER_ROLE_TYPE" ;;
  }

  dimension: primary_key_columns {
    type: string
    sql: ${TABLE}."PRIMARY_KEY_COLUMNS" ;;
  }

  dimension: scoring_profile_count {
    type: number
    sql: ${TABLE}."SCORING_PROFILE_COUNT" ;;
  }

  dimension: search_column {
    type: string
    sql: ${TABLE}."SEARCH_COLUMN" ;;
  }

  dimension: service_catalog {
    type: string
    sql: ${TABLE}."SERVICE_CATALOG" ;;
  }

  dimension: service_name {
    type: string
    sql: ${TABLE}."SERVICE_NAME" ;;
  }

  dimension: service_query_url {
    type: string
    sql: ${TABLE}."SERVICE_QUERY_URL" ;;
  }

  dimension: service_schema {
    type: string
    sql: ${TABLE}."SERVICE_SCHEMA" ;;
  }

  dimension: serving_data_bytes {
    type: number
    sql: ${TABLE}."SERVING_DATA_BYTES" ;;
  }

  dimension_group: serving_state {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."SERVING_STATE" ;;
  }

  dimension: source_data_bytes {
    type: number
    sql: ${TABLE}."SOURCE_DATA_BYTES" ;;
  }

  dimension: source_data_num_rows {
    type: number
    sql: ${TABLE}."SOURCE_DATA_NUM_ROWS" ;;
  }

  dimension: target_lag {
    type: string
    sql: ${TABLE}."TARGET_LAG" ;;
  }

  dimension: warehouse {
    type: string
    sql: ${TABLE}."WAREHOUSE" ;;
  }
  measure: count {
    type: count
    drill_fields: [service_name]
  }
}
