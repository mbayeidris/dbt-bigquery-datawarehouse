# dbt BigQuery Data Warehouse

## 📌 Overview
This project is a modern data warehouse built using **dbt (Data Build Tool)** and **Google BigQuery**.  
It follows a **layered architecture** with **staging**, **dimension**, and **fact tables**, ensuring data quality, modularity, and maintainability.

## 🛠️ Tools & Technologies
- **dbt Core 1.11.7** for data modeling, testing, and documentation
- **Google BigQuery** as the data warehouse
- **SQL** for transformations
- **Git & GitHub** for version control
- Optional: **Looker / Power BI** for dashboards

## 🗂️ Project Structure


dbt_core/
├── analyses/
├── macros/
├── models/
│ ├── staging/
│ └── marts/
│ ├── dimensions/
│ └── fact/
├── seeds/
├── snapshots/
├── tests/
├── dbt_project.yml
└── README.md


### Layers Explained
1. **Staging (`stg_`)**  
   - Cleans and standardizes raw source data  
   - Examples: `stg_actor`, `stg_category`, `stg_film_actor`, `stg_film_category`

2. **Dimensions (`dim_`)**  
   - Provides descriptive tables for actors, categories, etc.  
   - Examples: `dim_actor`, `dim_category`

3. **Fact (`fact_`)**  
   - Stores measurable data for analytics  
   - Example: `fact_film`

## ✅ Features
- **Data Quality Tests**  
  - `not_null`, `unique`, `relationships`
- **Documentation**  
  - dbt docs generated DAG & catalog
- **Modular SQL Models**  
  - Uses `ref()` to manage dependencies
- **Layered Architecture**  
  - Staging → Marts → Analytics-ready tables

## 🚀 How to Run
1. Activate your Python virtual environment:

```bash
& .\dbt-venv\Scripts\Activate.ps1
Run dbt models:
dbt run
Run tests:
dbt test
Generate documentation:
dbt docs generate
dbt docs serve
Open DAG and catalog in your browser:
http://localhost:8080
📊 DAG & Lineage

The project follows a clear DAG structure:

![DBT DAG](../dbt-dag.png)

sources → staging → marts
Each model is fully tested
Dependencies are handled via ref()