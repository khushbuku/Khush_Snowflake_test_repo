# The name of this view in Looker is "Ancillaries Details"
view: ancillaries_details {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "PUBLIC"."ANCILLARIES_DETAILS" ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Ancilary Type" in Explore.

  dimension: ancilary_type {
    type: string
    sql: ${TABLE}."ANCILARY_TYPE" ;;
  }

  dimension: ancillary_code {
    type: string
    sql: ${TABLE}."ANCILLARY_CODE" ;;
  }

  dimension: ancillary_quantity {
    type: number
    sql: ${TABLE}."ANCILLARY_QUANTITY" ;;
  }

  dimension: before_co_flag {
    type: string
    sql: ${TABLE}."BEFORE_CO_FLAG" ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: creation {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."CREATION_DATE" ;;
  }

  dimension: creation_user {
    type: string
    sql: ${TABLE}."CREATION_USER" ;;
  }

  dimension: optional_flag {
    type: string
    sql: ${TABLE}."OPTIONAL_FLAG" ;;
  }

  dimension: rental_agreement_number {
    type: number
    sql: ${TABLE}."RENTAL_AGREEMENT_NUMBER" ;;
  }
  measure: count {
    type: count
  }
}
