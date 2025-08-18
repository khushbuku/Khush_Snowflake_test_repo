# The name of this view in Looker is "Semantic Dimensions"
view: semantic_dimensions {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "INFORMATION_SCHEMA"."SEMANTIC_DIMENSIONS" ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Comment" in Explore.

  dimension: comment {
    type: string
    sql: ${TABLE}."COMMENT" ;;
  }

  dimension: data_type {
    type: string
    sql: ${TABLE}."DATA_TYPE" ;;
  }

  dimension: expression {
    type: string
    sql: ${TABLE}."EXPRESSION" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."NAME" ;;
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

  dimension: table_name {
    type: string
    sql: ${TABLE}."TABLE_NAME" ;;
  }
  measure: count {
    type: count
    drill_fields: [table_name, name, semantic_view_name]
  }
}
