# The name of this view in Looker is "Model Versions"
view: model_versions {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "INFORMATION_SCHEMA"."MODEL_VERSIONS" ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Catalog ID" in Explore.

  dimension: catalog_id {
    type: number
    sql: ${TABLE}."CATALOG_ID" ;;
  }

  dimension: catalog_name {
    type: string
    sql: ${TABLE}."CATALOG_NAME" ;;
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
    sql: ${TABLE}."CREATED_ON" ;;
  }

  dimension: dependencies {
    type: string
    sql: ${TABLE}."DEPENDENCIES" ;;
  }

  dimension: functions {
    type: string
    sql: ${TABLE}."FUNCTIONS" ;;
  }

  dimension: language {
    type: string
    sql: ${TABLE}."LANGUAGE" ;;
  }

  dimension_group: last_altered {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."LAST_ALTERED_ON" ;;
  }

  dimension: metadata {
    type: string
    sql: ${TABLE}."METADATA" ;;
  }

  dimension: model_comment {
    type: string
    sql: ${TABLE}."MODEL_COMMENT" ;;
  }

  dimension: model_name {
    type: string
    sql: ${TABLE}."MODEL_NAME" ;;
  }

  dimension: model_type {
    type: string
    sql: ${TABLE}."MODEL_TYPE" ;;
  }

  dimension: model_version_name {
    type: string
    sql: ${TABLE}."MODEL_VERSION_NAME" ;;
  }

  dimension: owner {
    type: string
    sql: ${TABLE}."OWNER" ;;
  }

  dimension: python_version {
    type: string
    sql: ${TABLE}."PYTHON_VERSION" ;;
  }

  dimension: schema_id {
    type: number
    sql: ${TABLE}."SCHEMA_ID" ;;
  }

  dimension: schema_name {
    type: string
    sql: ${TABLE}."SCHEMA_NAME" ;;
  }

  dimension: userdata {
    type: string
    sql: ${TABLE}."USERDATA" ;;
  }

  dimension: version_aliases {
    type: string
    sql: ${TABLE}."VERSION_ALIASES" ;;
  }
  measure: count {
    type: count
    drill_fields: [catalog_name, schema_name, model_name, model_version_name]
  }
}
