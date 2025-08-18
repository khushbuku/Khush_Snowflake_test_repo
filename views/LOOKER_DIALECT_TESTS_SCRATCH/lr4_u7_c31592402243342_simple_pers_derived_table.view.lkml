# The name of this view in Looker is "Lr4 U7 C31592402243342 Simple Pers Derived Table"
view: lr4_u7_c31592402243342_simple_pers_derived_table {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_DIALECT_TESTS_SCRATCH"."LR$4U7C31592402243342_SIMPLE_PERS_DERIVED_TABLE" ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Answer" in Explore.

  dimension: answer {
    type: number
    sql: ${TABLE}."ANSWER" ;;
  }
  measure: count {
    type: count
  }
}
