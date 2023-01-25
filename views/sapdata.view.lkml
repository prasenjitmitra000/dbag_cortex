# The name of this view in Looker is "Sapdata"
view: sapdata {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `dbag_usecase.sap-data`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "A S S E T S" in Explore.

  dimension: a_s_s_e_t_s {
    type: number
    sql: ${TABLE}.A_S_S_E_T_S ;;
  }

  dimension: amortization {
    type: number
    sql: ${TABLE}.Amortization ;;
  }

  dimension: business_area {
    type: string
    sql: ${TABLE}.Business_Area ;;
  }

  dimension: capital_employed {
    type: number
    sql: ${TABLE}.Capital_Employed ;;
  }

  dimension: cash_asset_ratio {
    type: number
    sql: ${TABLE}.Cash_Asset_Ratio ;;
  }

  dimension: cash_conversion_cycle_base {
    type: number
    sql: ${TABLE}.Cash_Conversion_Cycle_base ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_cash_conversion_cycle_base {
    type: sum
    sql: ${cash_conversion_cycle_base} ;;
  }

  measure: average_cash_conversion_cycle_base {
    type: average
    sql: ${cash_conversion_cycle_base} ;;
  }

  dimension: cash_flow_from_operations {
    type: number
    sql: ${TABLE}.Cash_Flow_from_Operations ;;
  }

  dimension: cogs {
    type: number
    sql: ${TABLE}.COGS ;;
  }

  dimension: cogs_48 {
    type: number
    sql: ${TABLE}.COGS_48 ;;
  }

  dimension: company_code {
    type: string
    sql: ${TABLE}.Company_Code ;;
  }

  dimension: contribution_margin {
    type: number
    sql: ${TABLE}.Contribution_Margin ;;
  }

  dimension: cost_center {
    type: string
    sql: ${TABLE}.Cost_Center ;;
  }

  dimension: cost_to_income {
    type: string
    sql: ${TABLE}.Cost_To_Income ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.Country ;;
  }

  dimension: customer {
    type: string
    sql: ${TABLE}.Customer ;;
  }

  dimension: customer_group {
    type: string
    sql: ${TABLE}.Customer_Group ;;
  }

  dimension: debt_to_equity_ratio {
    type: number
    sql: ${TABLE}.Debt_to_Equity_Ratio ;;
  }

  dimension: depreciation {
    type: number
    sql: ${TABLE}.Depreciation ;;
  }

  dimension: ebit {
    type: number
    sql: ${TABLE}.EBIT ;;
  }

  dimension: ebit_margin {
    type: string
    sql: ${TABLE}.EBIT_Margin ;;
  }

  dimension: ebitda {
    type: number
    sql: ${TABLE}.EBITDA ;;
  }

  dimension: ebitda_margin {
    type: string
    sql: ${TABLE}.EBITDA_Margin ;;
  }

  dimension: fixed_asset_turnover_ratio {
    type: number
    sql: ${TABLE}.Fixed_Asset_Turnover_Ratio ;;
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
    type: string
    sql: ${TABLE}.Gross_Profit_Margin ;;
  }

  dimension: gross_revenue {
    type: string
    sql: ${TABLE}.Gross_Revenue ;;
  }

  dimension: l_i_a_b_i_l_i_t_i_e_s {
    type: number
    sql: ${TABLE}.L_I_A_B_I_L_I_T_I_E_S ;;
  }

  dimension: marketable_securities {
    type: number
    sql: ${TABLE}.Marketable_Securities ;;
  }

  dimension: material {
    type: string
    sql: ${TABLE}.Material ;;
  }

  dimension: material_group {
    type: string
    sql: ${TABLE}.Material_Group ;;
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
    type: string
    sql: ${TABLE}.Net_Profit_Margin ;;
  }

  dimension: net_revenue {
    type: string
    sql: cast(${TABLE}.Net_Revenue as int) ;;
  }

  dimension: net_sales {
    type: string
    sql: ${TABLE}.Net_Sales ;;
  }

  dimension: operating_expenses {
    type: number
    sql: ${TABLE}.Operating_Expenses ;;
  }

  dimension: operating_margin {
    type: string
    sql: ${TABLE}.Operating_Margin ;;
  }

  dimension: operating_profit {
    type: number
    sql: ${TABLE}.Operating_Profit ;;
  }

  dimension: other_operating_expenses {
    type: number
    sql: ${TABLE}.Other_Operating_Expenses ;;
  }

  dimension: plant {
    type: string
    sql: ${TABLE}.Plant ;;
  }

  dimension: price {
    type: string
    sql: ${TABLE}.Price ;;
  }

  dimension: profit_center {
    type: string
    sql: ${TABLE}.Profit_Center ;;
  }

  dimension: property__plant_and_equipment {
    type: number
    sql: ${TABLE}.Property__Plant_and_Equipment ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.Region ;;
  }

  dimension: return_on_assets {
    type: number
    sql: ${TABLE}.Return_On_Assets ;;
  }

  dimension: roce {
    type: number
    sql: ${TABLE}.ROCE ;;
  }

  dimension: sales_contribution {
    type: number
    sql: ${TABLE}.Sales_Contribution ;;
  }

  dimension: sales_deductions {
    type: string
    sql: ${TABLE}.Sales_Deductions ;;
  }

  dimension: sales_margin {
    type: string
    sql: ${TABLE}.Sales_Margin ;;
  }

  dimension: segment {
    type: string
    sql: ${TABLE}.Segment ;;
  }

  dimension: share_holders_equity {
    type: number
    sql: ${TABLE}.Share_Holders_Equity ;;
  }

  dimension: supplier {
    type: string
    sql: ${TABLE}.Supplier ;;
  }

  dimension: tax {
    type: number
    sql: ${TABLE}.Tax ;;
  }

  dimension: trade_spend {
    type: string
    sql: ${TABLE}.Trade_Spend ;;
  }

  dimension: volume {
    type: string
    sql: ${TABLE}.Volume ;;
  }

  dimension: volume_54 {
    type: string
    sql: ${TABLE}.Volume_54 ;;
  }

  dimension: working_capital {
    type: number
    sql: ${TABLE}.Working_Capital ;;
  }

  dimension: working_capital_ratio {
    type: number
    sql: ${TABLE}.Working_Capital_Ratio ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

  measure: sum_of_net_revenue {
    type: sum
    sql: coalesce(${net_revenue},0) ;;
    html: @{big_money_format} ;;
  }
}
