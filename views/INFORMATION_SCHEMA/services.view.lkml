# The name of this view in Looker is "Services"
view: services {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "INFORMATION_SCHEMA"."SERVICES" ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Auto Resume" in Explore.

  dimension: auto_resume {
    type: yesno
    sql: ${TABLE}."AUTO_RESUME" ;;
  }

  dimension: comment {
    type: string
    sql: ${TABLE}."COMMENT" ;;
  }

  dimension: compute_pool_name {
    type: string
    sql: ${TABLE}."COMPUTE_POOL_NAME" ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."CREATED" ;;
  }

  dimension: current_instances {
    type: number
    sql: ${TABLE}."CURRENT_INSTANCES" ;;
  }

  dimension: dns_name {
    type: string
    sql: ${TABLE}."DNS_NAME" ;;
  }

  dimension: is_job {
    type: yesno
    sql: ${TABLE}."IS_JOB" ;;
  }

  dimension: is_upgrading {
    type: yesno
    sql: ${TABLE}."IS_UPGRADING" ;;
  }

  dimension_group: last_altered {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."LAST_ALTERED" ;;
  }

  dimension_group: last_resumed {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."LAST_RESUMED" ;;
  }

  dimension: managing_object_domain {
    type: string
    sql: ${TABLE}."MANAGING_OBJECT_DOMAIN" ;;
  }

  dimension: managing_object_name {
    type: string
    sql: ${TABLE}."MANAGING_OBJECT_NAME" ;;
  }

  dimension: max_instances {
    type: number
    sql: ${TABLE}."MAX_INSTANCES" ;;
  }

  dimension: min_instances {
    type: number
    sql: ${TABLE}."MIN_INSTANCES" ;;
  }

  dimension: min_ready_instances {
    type: number
    sql: ${TABLE}."MIN_READY_INSTANCES" ;;
  }

  dimension: query_warehouse {
    type: string
    sql: ${TABLE}."QUERY_WAREHOUSE" ;;
  }

  dimension: service_catalog {
    type: string
    sql: ${TABLE}."SERVICE_CATALOG" ;;
  }

  dimension: service_name {
    type: string
    sql: ${TABLE}."SERVICE_NAME" ;;
  }

  dimension: service_owner {
    type: string
    sql: ${TABLE}."SERVICE_OWNER" ;;
  }

  dimension: service_owner_role_type {
    type: string
    sql: ${TABLE}."SERVICE_OWNER_ROLE_TYPE" ;;
  }

  dimension: service_schema {
    type: string
    sql: ${TABLE}."SERVICE_SCHEMA" ;;
  }

  dimension: spec_digest {
    type: string
    sql: ${TABLE}."SPEC_DIGEST" ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}."STATUS" ;;
  }

  dimension: target_instances {
    type: number
    sql: ${TABLE}."TARGET_INSTANCES" ;;
  }
  measure: count {
    type: count
    drill_fields: [dns_name, compute_pool_name, service_name, managing_object_name]
  }
}
