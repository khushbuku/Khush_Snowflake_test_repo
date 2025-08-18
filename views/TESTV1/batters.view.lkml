# The name of this view in Looker is "Batters"
view: batters {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "TESTV1"."BATTERS" ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Ab" in Explore.

  dimension: ab {
    type: number
    sql: ${TABLE}."AB" ;;
  }

  dimension: bb {
    type: number
    sql: ${TABLE}."BB" ;;
  }

  dimension: cs {
    type: number
    sql: ${TABLE}."CS" ;;
  }

  dimension: doubles {
    type: number
    sql: ${TABLE}."DOUBLES" ;;
  }

  dimension: games {
    type: number
    sql: ${TABLE}."GAMES" ;;
  }

  dimension: gidp {
    type: number
    sql: ${TABLE}."GIDP" ;;
  }

  dimension: h {
    type: number
    sql: ${TABLE}."H" ;;
  }

  dimension: hbp {
    type: number
    sql: ${TABLE}."HBP" ;;
  }

  dimension: hr {
    type: number
    sql: ${TABLE}."HR" ;;
  }

  dimension: ibb {
    type: number
    sql: ${TABLE}."IBB" ;;
  }

  dimension: league {
    type: string
    sql: ${TABLE}."LEAGUE" ;;
  }

  dimension: player {
    type: string
    sql: ${TABLE}."PLAYER" ;;
  }

  dimension: r {
    type: number
    sql: ${TABLE}."R" ;;
  }

  dimension: rbi {
    type: number
    sql: ${TABLE}."RBI" ;;
  }

  dimension: sb {
    type: number
    sql: ${TABLE}."SB" ;;
  }

  dimension: sf {
    type: number
    sql: ${TABLE}."SF" ;;
  }

  dimension: sh {
    type: number
    sql: ${TABLE}."SH" ;;
  }

  dimension: so {
    type: number
    sql: ${TABLE}."SO" ;;
  }

  dimension: team {
    type: string
    sql: ${TABLE}."TEAM" ;;
  }

  dimension: triples {
    type: number
    sql: ${TABLE}."TRIPLES" ;;
  }

  dimension: year {
    type: number
    sql: ${TABLE}."YEAR" ;;
  }
  measure: count {
    type: count
  }
}
