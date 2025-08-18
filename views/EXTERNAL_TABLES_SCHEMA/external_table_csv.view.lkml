# The name of this view in Looker is "External Table Csv"
view: external_table_csv {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "EXTERNAL_TABLES_SCHEMA"."EXTERNAL_TABLE_CSV" ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Float" in Explore.

  dimension: float {
    type: string
    sql: ${TABLE}."FLOAT" ;;
  }

  dimension: int {
    type: string
    sql: ${TABLE}."INT" ;;
  }

  dimension: string {
    type: string
    sql: ${TABLE}."STRING" ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}."VALUE" ;;
  }
  measure: count {
    type: count
  }
}
