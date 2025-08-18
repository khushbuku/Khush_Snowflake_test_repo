# The name of this view in Looker is "Fields"
view: fields {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "INFORMATION_SCHEMA"."FIELDS" ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Character Maximum Length" in Explore.

  dimension: character_maximum_length {
    type: number
    sql: ${TABLE}."CHARACTER_MAXIMUM_LENGTH" ;;
  }

  dimension: character_octet_length {
    type: number
    sql: ${TABLE}."CHARACTER_OCTET_LENGTH" ;;
  }

  dimension: character_set_catalog {
    type: string
    sql: ${TABLE}."CHARACTER_SET_CATALOG" ;;
  }

  dimension: character_set_name {
    type: string
    sql: ${TABLE}."CHARACTER_SET_NAME" ;;
  }

  dimension: character_set_schema {
    type: string
    sql: ${TABLE}."CHARACTER_SET_SCHEMA" ;;
  }

  dimension: collation_catalog {
    type: string
    sql: ${TABLE}."COLLATION_CATALOG" ;;
  }

  dimension: collation_name {
    type: string
    sql: ${TABLE}."COLLATION_NAME" ;;
  }

  dimension: collation_schema {
    type: string
    sql: ${TABLE}."COLLATION_SCHEMA" ;;
  }

  dimension: data_type {
    type: string
    sql: ${TABLE}."DATA_TYPE" ;;
  }

  dimension: datetime_precision {
    type: number
    sql: ${TABLE}."DATETIME_PRECISION" ;;
  }

  dimension: dtd_identifier {
    type: string
    sql: ${TABLE}."DTD_IDENTIFIER" ;;
  }

  dimension: field_name {
    type: string
    sql: ${TABLE}."FIELD_NAME" ;;
  }

  dimension: interval_precision {
    type: number
    sql: ${TABLE}."INTERVAL_PRECISION" ;;
  }

  dimension: interval_type {
    type: string
    sql: ${TABLE}."INTERVAL_TYPE" ;;
  }

  dimension: maximum_cardinality {
    type: number
    sql: ${TABLE}."MAXIMUM_CARDINALITY" ;;
  }

  dimension: numeric_precision {
    type: number
    sql: ${TABLE}."NUMERIC_PRECISION" ;;
  }

  dimension: numeric_precision_radix {
    type: number
    sql: ${TABLE}."NUMERIC_PRECISION_RADIX" ;;
  }

  dimension: numeric_scale {
    type: number
    sql: ${TABLE}."NUMERIC_SCALE" ;;
  }

  dimension: object_catalog {
    type: string
    sql: ${TABLE}."OBJECT_CATALOG" ;;
  }

  dimension: object_name {
    type: string
    sql: ${TABLE}."OBJECT_NAME" ;;
  }

  dimension: object_schema {
    type: string
    sql: ${TABLE}."OBJECT_SCHEMA" ;;
  }

  dimension: object_type {
    type: string
    sql: ${TABLE}."OBJECT_TYPE" ;;
  }

  dimension: ordinal_position {
    type: number
    sql: ${TABLE}."ORDINAL_POSITION" ;;
  }

  dimension: row_identifier {
    type: string
    sql: ${TABLE}."ROW_IDENTIFIER" ;;
  }

  dimension: scope_catalog {
    type: string
    sql: ${TABLE}."SCOPE_CATALOG" ;;
  }

  dimension: scope_name {
    type: string
    sql: ${TABLE}."SCOPE_NAME" ;;
  }

  dimension: scope_schema {
    type: string
    sql: ${TABLE}."SCOPE_SCHEMA" ;;
  }

  dimension: udt_catalog {
    type: string
    sql: ${TABLE}."UDT_CATALOG" ;;
  }

  dimension: udt_name {
    type: string
    sql: ${TABLE}."UDT_NAME" ;;
  }

  dimension: udt_schema {
    type: string
    sql: ${TABLE}."UDT_SCHEMA" ;;
  }
  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
	scope_name,
	udt_name,
	collation_name,
	character_set_name,
	field_name,
	object_name
	]
  }

}
