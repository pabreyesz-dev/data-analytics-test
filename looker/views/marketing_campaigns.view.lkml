view: marketing_campaigns {
  sql_table_name: public.marketing_campaigns ;;

  dimension: campaign_name {
    type: string
    sql: ${TABLE}.campaign_name ;;
  }

  dimension: budget {
    type: number
    sql: ${TABLE}.budget ;;
  }

  measure: total_budget {
    type: sum
    sql: ${budget} ;;
  }
}
