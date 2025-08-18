# The name of this view in Looker is "Current Packages Policy"
view: current_packages_policy {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "INFORMATION_SCHEMA"."CURRENT_PACKAGES_POLICY" ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Additional Creation Blocklist" in Explore.

  dimension: additional_creation_blocklist {
    type: string
    sql: ${TABLE}."ADDITIONAL_CREATION_BLOCKLIST" ;;
  }

  dimension: allowlist {
    type: string
    sql: ${TABLE}."ALLOWLIST" ;;
  }

  dimension: blocklist {
    type: string
    sql: ${TABLE}."BLOCKLIST" ;;
  }

  dimension: comment {
    type: string
    sql: ${TABLE}."COMMENT" ;;
  }

  dimension: language {
    type: string
    sql: ${TABLE}."LANGUAGE" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."NAME" ;;
  }
  measure: count {
    type: count
    drill_fields: [name]
  }
}
