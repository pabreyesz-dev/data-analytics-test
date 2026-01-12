-- =====================================================
-- Schema: Analytics Platform (E-commerce Business Intelligence) - (Plataforma de análitica e-commerce inteligencia de negocios)
-- Database: PostgreSQL
-- Purpose: BI / Looker / Advanced SQL Analytics
-- =====================================================

BEGIN;

 -- CREACIÓN DE TABLAS PARA LA BASE DE DATOS TESTING DE ANALÍTICA DE DATOS
 -- CREACIÓN DE LAS RELACIONES ENTRE TABLAS PARA LA ANALÍTICA DE DATOS CRUZADOS

CREATE TABLE regions (
  region_id SERIAL PRIMARY KEY,
  country VARCHAR(100) NOT NULL,
  city VARCHAR(100) NOT NULL
);

CREATE TABLE customer_segments (
  customer_segment_id SERIAL PRIMARY KEY,
  segment_name VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE customers (
  customer_id SERIAL PRIMARY KEY,
  full_name VARCHAR(150) NOT NULL,
  email VARCHAR(150) UNIQUE NOT NULL,
  signup_date DATE NOT NULL,
  customer_segment_id INT REFERENCES customer_segments(customer_segment_id), -- CLAVE FORÁNEA DE TABLA customer_segments
  region_id INT REFERENCES regions(region_id),                               -- CLAVE FORÁNEA DE TABLA regions
  is_active BOOLEAN DEFAULT TRUE
);

CREATE TABLE product_categories (
  category_id SERIAL PRIMARY KEY,
  category_name VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE products (
  product_id SERIAL PRIMARY KEY,
  product_name VARCHAR(150) NOT NULL,
  category_id INT REFERENCES product_categories(category_id),                -- CLAVE FORÁNEA DE TABLA product_categories
  price NUMERIC(10,2) NOT NULL,
  cost NUMERIC(10,2) NOT NULL
);

CREATE TABLE payment_methods (
  payment_method_id SERIAL PRIMARY KEY,
  method_name VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE marketing_campaigns (
  campaign_id SERIAL PRIMARY KEY,
  campaign_name VARCHAR(150) NOT NULL,
  start_date DATE NOT NULL,
  end_date DATE NOT NULL,
  budget NUMERIC(12,2) NOT NULL
);

CREATE TABLE orders (
  order_id SERIAL PRIMARY KEY,
  customer_id INT NOT NULL REFERENCES customers(customer_id),                -- CLAVE FORÁNEA DE TABLA customers
  order_date DATE NOT NULL,
  order_status VARCHAR(50) NOT NULL,
  channel VARCHAR(50) NOT NULL
);

-- TABLA DE CORRELACIÓN ENTRE PEDIDOS Y PRODUCTOS
CREATE TABLE order_items (
  order_item_id SERIAL PRIMARY KEY,
  order_id INT NOT NULL REFERENCES orders(order_id),                         -- CLAVE FORÁNEA DE TABLA orders
  product_id INT NOT NULL REFERENCES products(product_id),                   -- CLAVE FORÁNEA DE TABLA products
  quantity INT NOT NULL CHECK (quantity > 0),
  unit_price NUMERIC(10,2) NOT NULL
);

-- TABLA DE CORRELACIÓN ENTRE PEDIDOS Y PAGOS
CREATE TABLE payments (
  payment_id SERIAL PRIMARY KEY,
  order_id INT NOT NULL REFERENCES orders(order_id),                        -- CLAVE FORÁNEA DE TABLA orders
  payment_method_id INT REFERENCES payment_methods(payment_method_id),      -- CLAVE FORÁNEA DE TABLA payment_methods
  payment_date DATE NOT NULL,
  payment_amount NUMERIC(10,2) NOT NULL,
  payment_status VARCHAR(50) NOT NULL
);

-- TABLA DE CORRELACIÓN ENTRE PEDIDOS Y ENVÍOS
CREATE TABLE shipments (
  shipment_id SERIAL PRIMARY KEY,
  order_id INT NOT NULL REFERENCES orders(order_id),                        -- CLAVE FORÁNEA DE TABLA orders
  region_id INT REFERENCES regions(region_id),                              -- CLAVE FORÁNEA DE TABLA regions
  shipped_date DATE,
  delivered_date DATE,
  shipping_cost NUMERIC(10,2)
);

-- TABLA DE DEVOLUCIONES DE PRODUCTOS
CREATE TABLE returns (
  return_id SERIAL PRIMARY KEY,
  order_item_id INT NOT NULL REFERENCES order_items(order_item_id),         -- CLAVE FORÁNEA DE TABLA order_items
  return_date DATE NOT NULL,
  return_reason VARCHAR(150)
);

-- TABLA DE CORRELACIÓN ENTRE PEDIDOS Y CAMPAÑAS DE MARKETING
CREATE TABLE order_campaigns (
  order_id INT REFERENCES orders(order_id),
  campaign_id INT REFERENCES marketing_campaigns(campaign_id),              -- CLAVE FORÁNEA DE TABLA marketing_campaigns
  PRIMARY KEY (order_id, campaign_id)
);


-- ÍNDICES PARA MEJORAR EL RENDIMIENTO DE LAS CONSULTAS ANALÍTICAS
CREATE INDEX idx_orders_order_date ON orders(order_date);
CREATE INDEX idx_orders_customer ON orders(customer_id);
CREATE INDEX idx_order_items_order ON order_items(order_id);
CREATE INDEX idx_payments_order ON payments(order_id);
CREATE INDEX idx_shipments_order ON shipments(order_id);

COMMIT;