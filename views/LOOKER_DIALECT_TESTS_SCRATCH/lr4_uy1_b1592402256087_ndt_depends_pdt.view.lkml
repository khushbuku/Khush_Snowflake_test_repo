# The name of this view in Looker is "Lr4 Uy1 B1592402256087 Ndt Depends Pdt"
view: lr4_uy1_b1592402256087_ndt_depends_pdt {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_DIALECT_TESTS_SCRATCH"."LR$4UY1B1592402256087_NDT_DEPENDS_PDT" ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "ID" in Explore.

  dimension: id {
    type: number
    sql: ${TABLE}."ID" ;;
  }
  measure: count {
    type: count
  }
}
