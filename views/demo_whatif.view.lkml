# The name of this view in Looker is "Demo Whatif"
view: demo_whatif {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `mi-4-305707.dbag_usecase.demo_whatif`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Business Area" in Explore.

  dimension: business_area {
    type: string
    sql: ${TABLE}.Business_Area ;;
  }

  dimension: geo {
    type: string
    sql: ${TABLE}.Geo ;;
  }

  dimension: mom_change_in_april_nr {
    type: number
    sql: ${TABLE}.MOM_Change_in_April_NR ;;
  }

  dimension: mom_change_in_june_nr {
    type: number
    sql: ${TABLE}.MOM_Change_in_June_NR ;;
  }

  dimension: mom_change_in_may_nr {
    type: number
    sql: ${TABLE}.MOM_Change_in_May_NR ;;
  }

  dimension: nr_april_2019 {
    type: number
    sql: ${TABLE}.NR_April_2019 ;;
  }

  dimension: nr_june_2019 {
    type: number
    sql: ${TABLE}.NR_June_2019 ;;
  }

  dimension: nr_may_2019 {
    type: number
    sql: ${TABLE}.NR_May_2019 ;;
  }

  dimension: price {
    type: number
    sql: ${TABLE}.Price ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_price {
    type: sum
    sql: ${price} ;;
  }

  measure: average_price {
    type: average
    sql: ${price} ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
