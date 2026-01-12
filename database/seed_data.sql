-- =====================================================
-- Seed data for Analytics Platform
-- Purpose: BI analysis, KPIs, dashboards
-- DATOS FICTICIOS PARA POBLAR LA BASE DE DATOS DE ANÁLITICA
-- =====================================================

BEGIN;

INSERT INTO regions (country, city) VALUES
('Chile', 'Santiago'),
('Chile', 'Valparaíso'),
('Chile', 'Concepción'),
('Chile', 'Antofagasta'),
('Argentina', 'Buenos Aires'),
('Argentina', 'Córdoba'),
('Perú', 'Lima'),
('Perú', 'Arequipa');

INSERT INTO customer_segments (segment_name) VALUES
('Regular'),
('Premium'),
('Enterprise');

INSERT INTO product_categories (category_name) VALUES
('Electronics'),
('Home'),
('Sports'),
('Books');

INSERT INTO payment_methods (method_name) VALUES
('Credit Card'),
('Bank Transfer'),
('PayPal');

INSERT INTO customers (full_name, email, signup_date, customer_segment_id, region_id, is_active) VALUES
('Juan Pérez', 'juan.perez@email.com', '2024-01-10', 1, 1, true),
('María González', 'maria.g@email.com', '2024-02-15', 2, 1, true),
('Carlos Soto', 'carlos.s@email.com', '2023-11-20', 1, 2, true),
('Ana Torres', 'ana.t@email.com', '2023-09-05', 3, 3, true),
('Luis Rojas', 'luis.r@email.com', '2024-03-01', 2, 4, false),
('Pedro Morales', 'pedro.m@email.com', '2023-10-12', 1, 1, true),
('Camila Fuentes', 'camila.f@email.com', '2024-01-22', 2, 2, true),
('Diego Herrera', 'diego.h@email.com', '2023-12-05', 1, 3, true),
('Sofía Martínez', 'sofia.m@email.com', '2024-02-10', 2, 4, true),
('Andrés López', 'andres.l@email.com', '2023-08-18', 3, 3, true),
('Valentina Castro', 'vale.c@email.com', '2024-03-03', 1, 5, false);

INSERT INTO products (product_name, category_id, price, cost) VALUES
('Laptop Pro 14', 1, 1200.00, 900.00),
('Wireless Headphones', 1, 150.00, 80.00),
('Office Chair', 2, 300.00, 180.00),
('Yoga Mat', 3, 50.00, 20.00),
('Data Analytics Book', 4, 60.00, 25.00),
('Smartphone X', 1, 900.00, 650.00),
('Bluetooth Speaker', 1, 120.00, 60.00),
('Standing Desk', 2, 600.00, 420.00),
('Desk Lamp', 2, 80.00, 35.00),
('Running Shoes', 3, 140.00, 70.00),
('Fitness Tracker', 3, 200.00, 130.00),
('SQL Mastery Book', 4, 70.00, 30.00),
('Business Analytics Guide', 4, 55.00, 22.00);

INSERT INTO marketing_campaigns (campaign_name, start_date, end_date, budget) VALUES
('Summer Sale', '2024-01-01', '2024-01-31', 5000),
('Back to Work', '2024-02-01', '2024-02-28', 3000),
('Spring Deals', '2024-03-01', '2024-03-31', 4000),
('Tech Week', '2024-02-10', '2024-02-20', 6000);

INSERT INTO orders (customer_id, order_date, order_status, channel) VALUES
(1, '2024-01-15', 'Completed', 'Web'),
(2, '2024-02-20', 'Completed', 'Mobile'),
(3, '2024-02-25', 'Completed', 'Web'),
(4, '2024-01-18', 'Completed', 'Web'),
(1, '2024-03-05', 'Cancelled', 'Mobile'),
(6, '2024-01-12', 'Completed', 'Web'),
(7, '2024-01-20', 'Completed', 'Mobile'),
(8, '2024-02-05', 'Completed', 'Web'),
(9, '2024-02-14', 'Cancelled', 'Mobile'),
(10, '2024-03-01', 'Completed', 'Web'),
(3, '2024-03-10', 'Completed', 'Web'),
(2, '2024-03-15', 'Completed', 'Mobile'),
(1, '2024-03-20', 'Completed', 'Web');

INSERT INTO order_items (order_id, product_id, quantity, unit_price) VALUES
(1, 1, 1, 1200.00),
(1, 2, 2, 150.00),
(2, 3, 1, 300.00),
(3, 5, 2, 60.00),
(4, 1, 1, 1200.00),
(6, 6, 1, 900.00),
(6, 7, 2, 120.00),
(7, 8, 1, 600.00),
(8, 9, 1, 140.00),
(9, 10, 1, 200.00),
(10, 11, 2, 70.00),
(11, 12, 1, 55.00);

INSERT INTO payments (order_id, payment_method_id, payment_date, payment_amount, payment_status) VALUES
(1, 1, '2024-01-15', 1500.00, 'Paid'),
(2, 2, '2024-02-20', 300.00, 'Paid'),
(3, 3, '2024-02-25', 120.00, 'Paid'),
(4, 1, '2024-01-18', 1200.00, 'Paid');

INSERT INTO shipments (order_id, region_id, shipped_date, delivered_date, shipping_cost) VALUES
(1, 1, '2024-01-16', '2024-01-18', 15.00),
(2, 1, '2024-02-21', '2024-02-24', 20.00),
(3, 2, '2024-02-26', '2024-03-02', 25.00),
(4, 3, '2024-01-19', '2024-01-25', 40.00);

INSERT INTO returns (order_item_id, return_date, return_reason) VALUES
(2, '2024-01-20', 'Defective product'),
(6, '2024-02-01', 'Size issue'),
(9, '2024-03-18', 'Customer changed mind');

INSERT INTO order_campaigns (order_id, campaign_id) VALUES
(1, 1),
(2, 2),
(3, 2),
(6, 3),
(8, 4),
(10, 3);

COMMIT;