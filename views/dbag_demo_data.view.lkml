view: dbag_demo_data {
  derived_table: {
    sql: SELECT
      Business_Area
      ,Geo
      ,'2019-04-01' month
      ,Price
      ,NR_April_2019 nr
      ,MOM_Change_in_April_NR nr_change
        FROM `mi-4-305707.dbag_usecase.dbag_demo_data_sample`
      union all
      SELECT
      Business_Area
      ,Geo
      ,'2019-05-01' month
      ,Price
      ,NR_May_2019 nr
      ,MOM_Change_in_May_NR nr_change
        FROM `mi-4-305707.dbag_usecase.dbag_demo_data_sample`
      union all
      SELECT
      Business_Area
      ,Geo
      ,'2019-06-01' month
      ,Price
      ,NR_June_2019 nr
      ,MOM_Change_in_June_NR nr_change
        FROM `mi-4-305707.dbag_usecase.dbag_demo_data_sample`
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension_group: month {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    datatype: datetime
    sql: cast(${TABLE}.month as date) ;;
  }

  dimension: business_area {
    type: string
    sql: ${TABLE}.Business_Area ;;
  }

  dimension: business_Geo {
    type: string
    sql: concat(${TABLE}.Business_Area,' ',${TABLE}.geo) ;;
  }

  dimension: geo {
    type: string
    sql: ${TABLE}.Geo ;;
  }

  dimension: price {
    type: number
    sql: ${TABLE}.Price ;;
    value_format_name: decimal_3
  }

  measure: nr {
    type: average
    sql: ${TABLE}.nr ;;
    html: @{big_number_format} ;;
  }

  measure: nr_change {
    type: average
    sql: ${TABLE}.nr_change/100 ;;
    value_format_name: percent_2
  }

  set: detail {
    fields: [business_area, geo, price, nr, nr_change]
  }
}
