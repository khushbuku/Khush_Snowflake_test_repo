# The name of this view in Looker is "Streamlits"
view: streamlits {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "INFORMATION_SCHEMA"."STREAMLITS" ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Comment" in Explore.

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

  dimension_group: last_altered {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."LAST_ALTERED" ;;
  }

  dimension: streamlit_catalog {
    type: string
    sql: ${TABLE}."STREAMLIT_CATALOG" ;;
  }

  dimension: streamlit_main_file {
    type: string
    sql: ${TABLE}."STREAMLIT_MAIN_FILE" ;;
  }

  dimension: streamlit_name {
    type: string
    sql: ${TABLE}."STREAMLIT_NAME" ;;
  }

  dimension: streamlit_owner {
    type: string
    sql: ${TABLE}."STREAMLIT_OWNER" ;;
  }

  dimension: streamlit_query_warehouse {
    type: string
    sql: ${TABLE}."STREAMLIT_QUERY_WAREHOUSE" ;;
  }

  dimension: streamlit_root_location {
    type: string
    sql: ${TABLE}."STREAMLIT_ROOT_LOCATION" ;;
  }

  dimension: streamlit_schema {
    type: string
    sql: ${TABLE}."STREAMLIT_SCHEMA" ;;
  }

  dimension: streamlit_title {
    type: string
    sql: ${TABLE}."STREAMLIT_TITLE" ;;
  }

  dimension: streamlit_url_id {
    type: string
    sql: ${TABLE}."STREAMLIT_URL_ID" ;;
  }
  measure: count {
    type: count
    drill_fields: [streamlit_name]
  }
}
