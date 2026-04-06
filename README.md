# 🎬 Movie Analytics Data Warehouse (dbt + BigQuery)

## 📌 Overview

This project is a modern data warehouse built using dbt (Data Build Tool) and Google BigQuery.
It follows a layered architecture (staging → marts) to transform raw data into clean, analytics-ready datasets.

The goal is to model a movie dataset to enable efficient analysis of:

- Film distribution across categories
- Actor participation in films
- Relationships between films, actors, and categories

## 🎯 Business Context

This project simulates a real-world analytics use case in the entertainment industry.

It enables stakeholders to answer questions such as:

- Which categories have the most films?
- Which actors appear most frequently?
- How are films distributed across categories?

## 🛠️ Tools & Technologies
- dbt Core 1.11.7 – data modeling, testing, and documentation
- Google BigQuery – cloud data warehouse
- SQL – data transformations
- Git & GitHub – version control
- Looker / Power BI – data visualization

## 📥 Data Sources

The dataset includes the following raw tables:

- actor
- category
- film_actor (relationship table)
- film_category (relationship table)

These sources are cleaned and transformed through the dbt pipeline.

## 🗂️ Project Structure
dbt_core/

├── analyses/

├── macros/

├── models/

│   ├── staging/

│   └── marts/

│       ├── dimensions/

│       └── fact/

├── seeds/

├── snapshots/

├── tests/

├── dbt_project.yml

└── README.md

## 🧱 Data Modeling Approach
### 1. Staging Layer (stg_)
- Cleans and standardizes raw data
- Renames columns and ensures consistency

Examples:

- stg_actor
- stg_category
- stg_film_actor
- stg_film_category
### 2. Dimension Tables (dim_)
- Contain descriptive attributes used for analysis

Examples:

- dim_actor
- dim_category
### 3. Fact Table (fact_)
- Central table containing measurable metrics

Example:

- fact_film
  - Number of film per actor
  - Number of film pper category

#### 🧠 Design Choices
- Star Schema Modeling for optimized analytics performance
- Separation of layers (staging → marts) for maintainability
- Handling many-to-many relationships via intermediate tables
- Use of ref() to manage dependencies and lineage

#### ✅ Features
- Data Quality Tests
  - not_null
  - unique
  - relationships
- Automated Documentation
  - DAG visualization
  - Data catalog via dbt docs
- Modular Models
  - Reusable SQL transformations

#### 📊 DAG & Lineage

The project follows a clear dependency structure:

##### sources → staging → marts

Each model:

- Is tested for data quality
- Is connected using ref()

## 🚀 How to Run
### 1. Activate virtual environment
& .\dbt-venv\Scripts\Activate.ps1
### 2. Run models
dbt run
### 3. Run tests
dbt test
### 4. Generate documentation
dbt docs generate
dbt docs serve

Then open:

http://localhost:8080

## 🔮 Future Improvements
- Create business-level marts
- Add orchestration (Airflow)

## ⭐ Key Takeaway

This project demonstrates:

- Strong understanding of data modeling (star schema)
- Ability to build scalable data pipelines with dbt
- Focus on data quality, testing, and documentation

## 👨‍💻 Author

## Idrissa Mbaye
## Data Analyst | Data Engineering Enthusiast
