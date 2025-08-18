# The name of this view in Looker is "Git Repositories"
view: git_repositories {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "INFORMATION_SCHEMA"."GIT_REPOSITORIES" ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "API Integration" in Explore.

  dimension: api_integration {
    type: string
    sql: ${TABLE}."API_INTEGRATION" ;;
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

  dimension: git_credentials {
    type: string
    sql: ${TABLE}."GIT_CREDENTIALS" ;;
  }

  dimension: git_repository_catalog {
    type: string
    sql: ${TABLE}."GIT_REPOSITORY_CATALOG" ;;
  }

  dimension: git_repository_name {
    type: string
    sql: ${TABLE}."GIT_REPOSITORY_NAME" ;;
  }

  dimension: git_repository_owner {
    type: string
    sql: ${TABLE}."GIT_REPOSITORY_OWNER" ;;
  }

  dimension: git_repository_schema {
    type: string
    sql: ${TABLE}."GIT_REPOSITORY_SCHEMA" ;;
  }

  dimension_group: last_altered {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."LAST_ALTERED" ;;
  }

  dimension: origin {
    type: string
    sql: ${TABLE}."ORIGIN" ;;
  }
  measure: count {
    type: count
    drill_fields: [git_repository_name]
  }
}
