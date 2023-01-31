view: dbag_bq_forcast {
  derived_table: {
    sql: SELECT cast(forecast_timestamp as date) forecast_month, forecast_value, standard_error, confidence_level, prediction_interval_lower_bound, prediction_interval_upper_bound, confidence_interval_lower_bound, confidence_interval_upper_bound FROM ML.FORECAST(MODEL `mi-4-305707.dbag_usecase.net_revenue_forecast` )
      ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

    dimension_group: forecast_month {
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
    sql: ${TABLE}.forecast_month ;;
  }
  dimension: forecast_value {
    type: number
    sql: ${TABLE}.forecast_value ;;
    value_format_name: decimal_2
  }

  dimension: standard_error {
    type: number
    sql: ${TABLE}.standard_error ;;
    value_format_name: decimal_2
  }

  dimension: confidence_level {
    type: number
    sql: ${TABLE}.confidence_level ;;
    value_format_name: decimal_2
  }

  dimension: prediction_interval_lower_bound {
    type: number
    sql: ${TABLE}.prediction_interval_lower_bound ;;
    value_format_name: decimal_2
  }

  dimension: prediction_interval_upper_bound {
    type: number
    sql: ${TABLE}.prediction_interval_upper_bound ;;
    value_format_name: decimal_2
  }

  dimension: confidence_interval_lower_bound {
    type: number
    sql: ${TABLE}.confidence_interval_lower_bound ;;
    value_format_name: decimal_2
  }

  dimension: confidence_interval_upper_bound {
    type: number
    sql: ${TABLE}.confidence_interval_upper_bound ;;
    value_format_name: decimal_2
  }

  set: detail {
    fields: [

      forecast_value,
      standard_error,
      confidence_level,
      prediction_interval_lower_bound,
      prediction_interval_upper_bound,
      confidence_interval_lower_bound,
      confidence_interval_upper_bound
    ]
  }
}
