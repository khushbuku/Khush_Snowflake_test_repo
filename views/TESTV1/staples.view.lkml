# The name of this view in Looker is "Staples"
# view: staples {
#   # The sql_table_name parameter indicates the underlying database table
#   # to be used for all fields in this view.
#   sql_table_name: "TESTV1"."STAPLES" ;;

#   # No primary key is defined for this view. In order to join this view in an Explore,
#   # define primary_key: yes on a dimension that has no repeated values.

#     # Here's what a typical dimension looks like in LookML.
#     # A dimension is a groupable field that can be used to filter query results.
#     # This dimension will be called "Call Center Region" in Explore.

#   dimension: call_center_region {
#     type: string
#     sql: ${TABLE}."Call_Center_Region" ;;
#   }

#   dimension: customer_balance {
#     type: number
#     sql: ${TABLE}."Customer_Balance" ;;
#   }

#   dimension: customer_name {
#     type: string
#     sql: ${TABLE}."Customer_Name" ;;
#   }

#   dimension: customer_segment {
#     type: string
#     sql: ${TABLE}."Customer_Segment" ;;
#   }

#   dimension: customer_state {
#     type: string
#     sql: ${TABLE}."Customer_State" ;;
#   }

#   dimension: discount {
#     type: number
#     sql: ${TABLE}."DISCOUNT" ;;
#   }

#   dimension: employee_dept {
#     type: string
#     sql: ${TABLE}."Employee_Dept" ;;
#   }

#   dimension: employee_name {
#     type: string
#     sql: ${TABLE}."Employee_Name" ;;
#   }

#   dimension: employee_salary {
#     type: number
#     sql: ${TABLE}."Employee_Salary" ;;
#   }

#   dimension: employee_yrs_exp {
#     type: number
#     sql: ${TABLE}."Employee_Yrs_Exp" ;;
#   }

#   dimension: fill_time {
#     type: number
#     sql: ${TABLE}."Fill_Time" ;;
#   }

#   dimension: gross_profit {
#     type: number
#     sql: ${TABLE}."Gross_Profit" ;;
#   }

#   dimension: item_count {
#     type: number
#     sql: ${TABLE}."Item_Count" ;;
#   }

#   dimension: manager_name {
#     type: string
#     sql: ${TABLE}."Manager_Name" ;;
#   }

#   dimension: market_segment {
#     type: string
#     sql: ${TABLE}."Market_Segment" ;;
#   }
#   # Dates and timestamps can be represented in Looker using a dimension group of type: time.
#   # Looker converts dates and timestamps to the specified timeframes within the dimension group.

#   dimension_group: order {
#     type: time
#     timeframes: [raw, time, date, week, month, quarter, year]
#     sql: ${TABLE}."Order_Date" ;;
#   }

#   dimension: order_day {
#     type: number
#     sql: ${TABLE}."Order_Day" ;;
#   }

#   dimension: order_id {
#     type: string
#     sql: ${TABLE}."Order_ID" ;;
#   }

#   dimension: order_month {
#     type: number
#     sql: ${TABLE}."Order_Month" ;;
#   }

#   dimension: order_priority {
#     type: string
#     sql: ${TABLE}."Order_Priority" ;;
#   }

#   dimension: order_quantity {
#     type: number
#     sql: ${TABLE}."Order_Quantity" ;;
#   }

#   dimension: order_quarter {
#     type: string
#     sql: ${TABLE}."Order_Quarter" ;;
#   }

#   dimension: order_status {
#     type: string
#     sql: ${TABLE}."Order_Status" ;;
#   }

#   dimension: order_year {
#     type: number
#     sql: ${TABLE}."Order_Year" ;;
#   }

#   dimension: pid {
#     type: number
#     value_format_name: id
#     sql: ${TABLE}."PID" ;;
#   }

#   dimension: price {
#     type: number
#     sql: ${TABLE}."PRICE" ;;
#   }

#   dimension: prod_type1 {
#     type: string
#     sql: ${TABLE}."Prod_Type1" ;;
#   }

#   dimension: prod_type2 {
#     type: string
#     sql: ${TABLE}."Prod_Type2" ;;
#   }

#   dimension: prod_type3 {
#     type: string
#     sql: ${TABLE}."Prod_Type3" ;;
#   }

#   dimension: prod_type4 {
#     type: string
#     sql: ${TABLE}."Prod_Type4" ;;
#   }

#   dimension: product_base_margin {
#     type: number
#     sql: ${TABLE}."Product_Base_Margin" ;;
#   }

#   dimension: product_container {
#     type: string
#     sql: ${TABLE}."Product_Container" ;;
#   }

#   dimension: product_id {
#     type: string
#     sql: ${TABLE}."Product_ID" ;;
#   }

#   dimension: product_in_stock {
#     type: string
#     sql: ${TABLE}."Product_In_Stock" ;;
#   }

#   dimension: product_name {
#     type: string
#     sql: ${TABLE}."Product_Name" ;;
#   }

#   dimension: receive_time {
#     type: number
#     sql: ${TABLE}."Receive_Time" ;;
#   }

#   dimension_group: received {
#     type: time
#     timeframes: [raw, time, date, week, month, quarter, year]
#     sql: ${TABLE}."Received_Date" ;;
#   }

#   dimension: sales_total {
#     type: number
#     sql: ${TABLE}."Sales_Total" ;;
#   }

#   dimension: ship_charge {
#     type: number
#     sql: ${TABLE}."Ship_Charge" ;;
#   }

#   dimension_group: ship {
#     type: time
#     timeframes: [raw, time, date, week, month, quarter, year]
#     sql: ${TABLE}."Ship_Date" ;;
#   }

#   dimension: ship_handle_cost {
#     type: number
#     sql: ${TABLE}."Ship_Handle_Cost" ;;
#   }

#   dimension: ship_mode {
#     type: string
#     sql: ${TABLE}."Ship_Mode" ;;
#   }

#   dimension: ship_priority {
#     type: string
#     sql: ${TABLE}."Ship_Priority" ;;
#   }

#   dimension: ship_promo {
#     type: string
#     sql: ${TABLE}."Ship_Promo" ;;
#   }

#   dimension: supplier_balance {
#     type: number
#     sql: ${TABLE}."Supplier_Balance" ;;
#   }

#   dimension: supplier_name {
#     type: string
#     sql: ${TABLE}."Supplier_Name" ;;
#   }

#   dimension: supplier_region {
#     type: string
#     sql: ${TABLE}."Supplier_Region" ;;
#   }

#   dimension: supplier_state {
#     type: string
#     sql: ${TABLE}."Supplier_State" ;;
#   }

#   dimension: tax_rate {
#     type: number
#     sql: ${TABLE}."Tax_Rate" ;;
#   }

#   dimension: total_cycle_time {
#     type: number
#     sql: ${TABLE}."Total_Cycle_Time" ;;
#   }
#   measure: count {
#     type: count
#     drill_fields: [employee_name, manager_name, product_name, customer_name, supplier_name]
#   }
# }
