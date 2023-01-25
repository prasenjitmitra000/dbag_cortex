# The name of this view in Looker is "Dbag Sap Data"
view: dbag_sap_data {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `mi-4-305707.dbag_usecase.dbag_sap_data`
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

  dimension: cash_flow_from_operations {
    type: number
    sql: ${TABLE}.Cash_Flow_from_Operations ;;
  }

  dimension: cogs {
    type: number
    sql: ${TABLE}.COGS ;;
  }

  dimension: cogs_42 {
    type: number
    sql: ${TABLE}.COGS_42 ;;
  }

  dimension: company_code {
    type: number
    sql: ${TABLE}.Company_Code ;;
  }

  dimension: consumptn__raw_mat_1 {
    type: number
    sql: ${TABLE}.Consumptn__raw_mat_1 ;;
  }

  dimension: contribution_margin {
    type: number
    sql: ${TABLE}.Contribution_Margin ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_contribution_margin {
    type: sum
    sql: ${contribution_margin} ;;
  }

  measure: average_contribution_margin {
    type: average
    sql: ${contribution_margin} ;;
  }

  dimension: cost_to_income {
    type: number
    sql: ${TABLE}.Cost_To_Income ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.Country ;;
  }

  dimension: current_price {
    type: number
    sql: ${TABLE}.Current_Price ;;
  }

  dimension: current_volume {
    type: number
    sql: ${TABLE}.Current_Volume ;;
  }

  dimension: customer_discounts {
    type: number
    sql: ${TABLE}.Customer_discounts ;;
  }

  dimension: customer_group {
    type: string
    sql: ${TABLE}.Customer_Group ;;
  }

  dimension: ebit {
    type: number
    sql: ${TABLE}.EBIT ;;
  }

  dimension: ebit_margin {
    type: number
    sql: ${TABLE}.EBIT_Margin ;;
  }

  dimension: ebitda {
    type: number
    sql: ${TABLE}.EBITDA ;;
  }

  dimension: ebitda_margin {
    type: number
    sql: ${TABLE}.EBITDA_Margin ;;
  }

  dimension: gl_account {
    type: string
    sql: ${TABLE}.GL_Account ;;
  }

  dimension: gross_profit {
    type: number
    sql: ${TABLE}.Gross_Profit ;;
  }

  dimension: gross_profit_margin {
    type: number
    sql: ${TABLE}.Gross_Profit_Margin ;;
  }

  dimension: gross_revenue {
    type: number
    sql: ${TABLE}.Gross_Revenue ;;
  }

  dimension: material {
    type: string
    sql: ${TABLE}.Material ;;
  }

  dimension: mix_effect_part1 {
    type: number
    sql: ${TABLE}.Mix_effect_part1 ;;
  }

  dimension: net_income {
    type: number
    sql: ${TABLE}.Net_Income ;;
  }

  dimension: net_profit {
    type: number
    sql: ${TABLE}.Net_Profit ;;
  }

  dimension: net_profit_margin {
    type: number
    sql: ${TABLE}.Net_Profit_Margin ;;
  }

  dimension: net_revenue {
    type: number
    sql: cast(${TABLE}.Net_Revenue as int) ;;
  }

  dimension: net_sales {
    type: number
    sql: ${TABLE}.Net_Sales ;;
  }

  dimension: operating_expenses {
    type: number
    sql: ${TABLE}.Operating_Expenses ;;
  }

  dimension: operating_margin {
    type: number
    sql: ${TABLE}.Operating_Margin ;;
  }

  dimension: operating_profit {
    type: number
    sql: ${TABLE}.Operating_Profit ;;
  }

  dimension: organic_sales {
    type: number
    sql: ${TABLE}.Organic_Sales ;;
  }

  dimension: other_costs {
    type: number
    sql: ${TABLE}.Other_costs ;;
  }

  dimension: other_operating_expenses {
    type: number
    sql: ${TABLE}.Other_Operating_Expenses ;;
  }

  dimension: past_price {
    type: number
    sql: ${TABLE}.Past_price ;;
  }

  dimension: past_volume {
    type: number
    sql: ${TABLE}.Past_volume ;;
  }

  dimension: plant {
    type: string
    sql: ${TABLE}.Plant ;;
  }

  dimension: price {
    type: number
    sql: ${TABLE}.Price ;;
  }

  dimension: price_effect_base {
    type: number
    sql: ${TABLE}.Price_Effect_Base ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.Region ;;
  }

  dimension: sales_contribution {
    type: number
    sql: ${TABLE}.Sales_Contribution ;;
  }

  dimension: sales_deductions {
    type: number
    sql: ${TABLE}.Sales_Deductions ;;
  }

  dimension: sales_margin {
    type: number
    sql: ${TABLE}.Sales_Margin ;;
  }

  dimension: sales_revenue_forgn {
    type: number
    sql: ${TABLE}.Sales_revenue_forgn ;;
  }

  dimension: sales_revenues_dom_ {
    type: number
    sql: ${TABLE}.Sales_revenues_dom_ ;;
  }

  dimension: segment {
    type: string
    sql: ${TABLE}.Segment ;;
  }

  dimension: time {
    type: string
    sql: ${TABLE}.Time ;;
  }

  dimension: year_month {
    type: string
    sql: case when ${TABLE}.Time='Jan (2019)' then '2019-01' when ${TABLE}.Time='Feb (2019)' then '2019-02' when ${TABLE}.Time='Mar (2019)' then '2019-03' end ;;
  }

  dimension: trade_spend {
    type: number
    sql: ${TABLE}.Trade_Spend ;;
  }

  dimension: volume {
    type: number
    sql: ${TABLE}.Volume ;;
  }

  dimension: volume_45 {
    type: number
    sql: ${TABLE}.Volume_45 ;;
  }

  dimension: volume_change {
    type: number
    sql: ${TABLE}.Volume_change ;;
  }

  dimension: volume_effect_part1 {
    type: number
    sql: ${TABLE}.Volume_effect_part1 ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

  measure: sum_of_net_revenue {
    type: sum
    label: "Net Revenue"
    sql: coalesce(${net_revenue},0) ;;
    html: @{big_money_format} ;;
  }

  measure: sum_of_expenses {
    type: sum
    label: "Total Expenses"
    sql: coalesce(${operating_expenses},0) ;;
    html: @{big_money_format} ;;
  }

  measure: sum_of_contribution_margin {
    type: sum
    label: "Contribution margin"
    sql: coalesce(${contribution_margin},0) ;;
    html: @{big_money_format} ;;
  }

  measure: sum_of_net_profit_margin {
    type: sum
    label: "Net Profit margin"
    sql: coalesce(${net_profit_margin},0) ;;
    html: @{big_number_format} ;;
  }

  measure: total_ebit {
    type: sum
    sql: ${TABLE}.EBIT;;
    html: @{big_money_format} ;;
  }
}
