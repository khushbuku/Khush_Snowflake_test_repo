# The name of this view in Looker is "Semantic Relationships"
view: semantic_relationships {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "INFORMATION_SCHEMA"."SEMANTIC_RELATIONSHIPS" ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Foreign Keys" in Explore.

  dimension: foreign_keys {
    type: string
    sql: ${TABLE}."FOREIGN_KEYS" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."NAME" ;;
  }

  dimension: ref_keys {
    type: string
    sql: ${TABLE}."REF_KEYS" ;;
  }

  dimension: ref_table_name {
    type: string
    sql: ${TABLE}."REF_TABLE_NAME" ;;
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

  dimension: table_name {
    type: string
    sql: ${TABLE}."TABLE_NAME" ;;
  }
  measure: count {
    type: count
    drill_fields: [semantic_view_name, ref_table_name, name, table_name]
  }
}
