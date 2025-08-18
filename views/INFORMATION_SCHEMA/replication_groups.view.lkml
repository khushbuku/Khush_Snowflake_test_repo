# The name of this view in Looker is "Replication Groups"
view: replication_groups {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "INFORMATION_SCHEMA"."REPLICATION_GROUPS" ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Account Locator" in Explore.

  dimension: account_locator {
    type: string
    sql: ${TABLE}."ACCOUNT_LOCATOR" ;;
  }

  dimension: account_name {
    type: string
    sql: ${TABLE}."ACCOUNT_NAME" ;;
  }

  dimension: allowed_accounts {
    type: string
    sql: ${TABLE}."ALLOWED_ACCOUNTS" ;;
  }

  dimension: allowed_integration_types {
    type: string
    sql: ${TABLE}."ALLOWED_INTEGRATION_TYPES" ;;
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

  dimension: error_integration {
    type: string
    sql: ${TABLE}."ERROR_INTEGRATION" ;;
  }

  dimension: is_listing_auto_fulfillment_group {
    type: yesno
    sql: ${TABLE}."IS_LISTING_AUTO_FULFILLMENT_GROUP" ;;
  }

  dimension: is_primary {
    type: yesno
    sql: ${TABLE}."IS_PRIMARY" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."NAME" ;;
  }

  dimension_group: next_scheduled_refresh {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."NEXT_SCHEDULED_REFRESH" ;;
  }

  dimension: object_types {
    type: string
    sql: ${TABLE}."OBJECT_TYPES" ;;
  }

  dimension: organization_name {
    type: string
    sql: ${TABLE}."ORGANIZATION_NAME" ;;
  }

  dimension: owner {
    type: string
    sql: ${TABLE}."OWNER" ;;
  }

  dimension: primary {
    type: string
    sql: ${TABLE}."PRIMARY" ;;
  }

  dimension: region_group {
    type: string
    sql: ${TABLE}."REGION_GROUP" ;;
  }

  dimension: replication_schedule {
    type: string
    sql: ${TABLE}."REPLICATION_SCHEDULE" ;;
  }

  dimension: secondary_state {
    type: string
    sql: ${TABLE}."SECONDARY_STATE" ;;
  }

  dimension: snowflake_region {
    type: string
    sql: ${TABLE}."SNOWFLAKE_REGION" ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}."TYPE" ;;
  }
  measure: count {
    type: count
    drill_fields: [organization_name, account_name, name]
  }
}
