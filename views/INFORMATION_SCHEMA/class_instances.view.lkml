# The name of this view in Looker is "Class Instances"
view: class_instances {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "INFORMATION_SCHEMA"."CLASS_INSTANCES" ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Class Database Name" in Explore.

  dimension: class_database_name {
    type: string
    sql: ${TABLE}."CLASS_DATABASE_NAME" ;;
  }

  dimension: class_name {
    type: string
    sql: ${TABLE}."CLASS_NAME" ;;
  }

  dimension: class_schema_name {
    type: string
    sql: ${TABLE}."CLASS_SCHEMA_NAME" ;;
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

  dimension: database_name {
    type: string
    sql: ${TABLE}."DATABASE_NAME" ;;
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
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
	name,
	schema_name,
	database_name,
	class_name,
	class_schema_name,
	class_database_name
	]
  }

}
