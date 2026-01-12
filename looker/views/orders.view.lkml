view: orders {
  sql_table_name: public.orders ;;

  dimension: order_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.order_id ;;
  }

  dimension_group: order_date {
    type: time
    timeframes: [date, week, month, year]
    sql: ${TABLE}.order_date ;;
  }

  dimension: order_status {
    type: string
    sql: ${TABLE}.order_status ;;
  }

  dimension: channel {
    type: string
    sql: ${TABLE}.channel ;;
  }

  measure: total_orders {
    type: count
  }
}
