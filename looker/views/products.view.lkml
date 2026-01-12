view: products {
  sql_table_name: public.products ;;

  dimension: product_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.product_id ;;
  }

  dimension: product_name {
    type: string
    sql: ${TABLE}.product_name ;;
  }

  dimension: category_id {
    type: number
    sql: ${TABLE}.category_id ;;
  }

  dimension: cost {
    type: number
    sql: ${TABLE}.cost ;;
  }

  measure: total_cost {
    type: sum
    sql: ${order_items.quantity} * ${cost} ;;
  }

  measure: gross_profit {
    type: number
    sql: ${order_items.revenue} - ${total_cost} ;;
  }
}
