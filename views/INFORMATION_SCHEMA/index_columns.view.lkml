# The name of this view in Looker is "Index Columns"
view: index_columns {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "INFORMATION_SCHEMA"."INDEX_COLUMNS" ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Constraint Name" in Explore.

  dimension: constraint_name {
    type: string
    sql: ${TABLE}."CONSTRAINT_NAME" ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."CREATED" ;;
  }

  dimension: index_name {
    type: string
    sql: ${TABLE}."INDEX_NAME" ;;
  }

  dimension: index_owner {
    type: string
    sql: ${TABLE}."INDEX_OWNER" ;;
  }

  dimension: is_unique {
    type: string
    sql: ${TABLE}."IS_UNIQUE" ;;
  }

  dimension: key_sequence {
    type: number
    sql: ${TABLE}."KEY_SEQUENCE" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."NAME" ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}."STATUS" ;;
  }

  dimension: table_catalog {
    type: string
    sql: ${TABLE}."TABLE_CATALOG" ;;
  }

  dimension: table_name {
    type: string
    sql: ${TABLE}."TABLE_NAME" ;;
  }

  dimension: table_schema {
    type: string
    sql: ${TABLE}."TABLE_SCHEMA" ;;
  }
  measure: count {
    type: count
    drill_fields: [constraint_name, name, index_name, table_name]
  }
}
