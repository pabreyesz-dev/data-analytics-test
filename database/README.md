# Database Layer – PostgreSQL

<ESPAÑOL>
Esta capa representa la base transaccional del proyecto, diseñada para soportar análisis de negocio en un contexto de e-commerce.

---

## Modelo de Datos

El modelo sigue un enfoque relacional normalizado, con entidades principales y tablas de correlación que permiten análisis cruzados.

### Entidades Principales
- customers
- orders
- products
- regions
- product_categories

### Tablas de Relación
- order_items
- payments
- shipments
- returns
- order_campaigns

---

## Diseño del Modelo

- Claves primarias tipo SERIAL
- Claves foráneas explícitas
- Índices orientados a consultas analíticas
- Separación clara entre entidades y relaciones

---

## Scripts Incluidos

- `schema.sql`  
  Crea la base de datos, tablas, relaciones e índices.

- `seed.sql`  
  Pobla la base con datos realistas para análisis BI.

---

## Evidencia

- Creación de tablas
- Relaciones visibles en pgAdmin
- Datos poblados correctamente

Screenshots disponibles en la carpeta `screenshots/`.

---

## Propósito

Esta base de datos sirve como fuente única de verdad para las capas analíticas y de visualización del proyecto.

<ENGLISH>
This layer represents the transactional foundation of the project, designed to support business analytics in an e-commerce context.

---

## Data Model

The model follows a normalized relational approach, with primary entities and correlation tables that enable cross-analysis.

### Primary Entities
- customers
- orders
- products
- regions
- product_categories

### Relationship Tables
- order_items
- payments
- shipments
- returns
- order_campaigns

---

## Model Design

- Serial primary keys
- Explicit foreign keys
- Indexes geared towards analytical queries
- Clear separation between entities and relationships

---

## Included Scripts

- `schema.sql` Creates the database, tables, relationships, and indexes.

- `seed.sql`

Populate the database with realistic data for BI analysis.

--

## Evidence

- Table creation
- Relationships visible in pgAdmin
- Data successfully populated

Screenshots available in the `screenshots/` folder.

--

## Purpose

This database serves as the single source of truth for the project's analytical and visualization layers.