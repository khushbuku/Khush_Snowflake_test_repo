# The name of this view in Looker is "Tst Reg 28 A50 D8 Ff730 Dad613"
view: tst_reg_28_a50_d8_ff730_dad613 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST_SCRATCH"."TST_REG_28A50D8FF730DAD613" ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Created At" in Explore.

  dimension: created_at {
    type: number
    sql: ${TABLE}."CREATED_AT" ;;
  }

  dimension: expires_at {
    type: number
    sql: ${TABLE}."EXPIRES_AT" ;;
  }

  dimension: looker {
    type: string
    sql: ${TABLE}."LOOKER" ;;
  }

  dimension: reg_key {
    type: string
    sql: ${TABLE}."REG_KEY" ;;
  }
  measure: count {
    type: count
  }
}
