# The name of this view in Looker is "Semantic Tables"
view: semantic_tables {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "INFORMATION_SCHEMA"."SEMANTIC_TABLES" ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Base Table Catalog" in Explore.

  dimension: base_table_catalog {
    type: string
    sql: ${TABLE}."BASE_TABLE_CATALOG" ;;
  }

  dimension: base_table_name {
    type: string
    sql: ${TABLE}."BASE_TABLE_NAME" ;;
  }

  dimension: base_table_schema {
    type: string
    sql: ${TABLE}."BASE_TABLE_SCHEMA" ;;
  }

  dimension: comment {
    type: string
    sql: ${TABLE}."COMMENT" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."NAME" ;;
  }

  dimension: primary_keys {
    type: string
    sql: ${TABLE}."PRIMARY_KEYS" ;;
  }

  dimension: semantic_view_catalog {
    type: string
    sql: ${TABLE}."SEMANTIC_VIEW_CATALOG" ;;
  }

  dimension: semantic_view_name {
    type: string
    sql: ${TABLE}."SEMANTIC_VIEW_NAME" ;;
  }

  dimension: semantic_view_schema {
    type: string
    sql: ${TABLE}."SEMANTIC_VIEW_SCHEMA" ;;
  }

  dimension: synonyms {
    type: string
    sql: ${TABLE}."SYNONYMS" ;;
  }

  dimension: unique_keys {
    type: string
    sql: ${TABLE}."UNIQUE_KEYS" ;;
  }
  measure: count {
    type: count
    drill_fields: [base_table_name, name, semantic_view_name]
  }
}
