view: shipments {
  sql_table_name: public.shipments ;;

  dimension_group: shipped_date {
    type: time
    timeframes: [date, week, month]
    sql: ${TABLE}.shipped_date ;;
}

  dimension_group: delivered_date {
    type: time
    timeframes: [date, week, month]
    sql: ${TABLE}.delivered_date ;;
  }

  measure: avg_delivery_days {
    type: average
    sql: ${TABLE}.delivered_date - ${TABLE}.shipped_date ;;
  }
}
