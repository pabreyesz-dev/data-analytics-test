connection: "postgres_ecommerce_analytics"

include: "/views/*.view.lkml"

explore: orders {
  label: "Orders Analytics"

  join: customers {
    type: left_outer
    sql_on: ${orders.customer_id} = ${customers.customer_id} ;;
    relationship: many_to_one
  }

  join: order_items {
    type: left_outer
    sql_on: ${orders.order_id} = ${order_items.order_id} ;;
    relationship: one_to_many
  }

  join: products {
    type: left_outer
    sql_on: ${order_items.product_id} = ${products.product_id} ;;
    relationship: many_to_one
  }

  join: marketing_campaigns {
    type: left_outer
    sql_on: ${orders.order_id} = ${order_campaigns.order_id} ;;
    relationship: many_to_one
  }

  join: shipments {
    type: left_outer
    sql_on: ${orders.order_id} = ${shipments.order_id} ;;
    relationship: one_to_one
  }
}
