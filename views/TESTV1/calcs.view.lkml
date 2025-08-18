# The name of this view in Looker is "Calcs"
view: calcs {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "TESTV1"."CALCS" ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Bool0" in Explore.

  dimension: bool0 {
    type: yesno
    sql: ${TABLE}."BOOL0" ;;
  }

  dimension: bool1 {
    type: yesno
    sql: ${TABLE}."BOOL1" ;;
  }

  dimension: bool2 {
    type: yesno
    sql: ${TABLE}."BOOL2" ;;
  }

  dimension: bool3 {
    type: yesno
    sql: ${TABLE}."BOOL3" ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: date0 {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."DATE0" ;;
  }

  dimension_group: date1 {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."DATE1" ;;
  }

  dimension_group: date2 {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."DATE2" ;;
  }

  dimension_group: date3 {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."DATE3" ;;
  }

  dimension_group: datetime0 {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."DATETIME0" ;;
  }

  dimension: datetime1 {
    type: string
    sql: ${TABLE}."DATETIME1" ;;
  }

  dimension: int0 {
    type: number
    sql: ${TABLE}."INT0" ;;
  }

  dimension: int1 {
    type: number
    sql: ${TABLE}."INT1" ;;
  }

  dimension: int2 {
    type: number
    sql: ${TABLE}."INT2" ;;
  }

  dimension: int3 {
    type: number
    sql: ${TABLE}."INT3" ;;
  }

  dimension: key {
    type: string
    sql: ${TABLE}."KEY" ;;
  }

  dimension: num0 {
    type: number
    sql: ${TABLE}."NUM0" ;;
  }

  dimension: num1 {
    type: number
    sql: ${TABLE}."NUM1" ;;
  }

  dimension: num2 {
    type: number
    sql: ${TABLE}."NUM2" ;;
  }

  dimension: num3 {
    type: number
    sql: ${TABLE}."NUM3" ;;
  }

  dimension: num4 {
    type: number
    sql: ${TABLE}."NUM4" ;;
  }

  dimension: str0 {
    type: string
    sql: ${TABLE}."STR0" ;;
  }

  dimension: str1 {
    type: string
    sql: ${TABLE}."STR1" ;;
  }

  dimension: str2 {
    type: string
    sql: ${TABLE}."STR2" ;;
  }

  dimension: str3 {
    type: string
    sql: ${TABLE}."STR3" ;;
  }

  dimension_group: time0 {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."TIME0" ;;
  }

  dimension_group: time1 {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."TIME1" ;;
  }

  dimension: zzz {
    type: string
    sql: ${TABLE}."ZZZ" ;;
  }
  measure: count {
    type: count
  }
}
