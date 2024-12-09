# DBT Documentation

## Table of Contents
1. [Introduction to DBT](#introduction-to-dbt)
2. [Use Case](#use-case)
3. [Project Setup](#project-setup)
4. [Project YAML Configuration (`dbt_project.yml`)](#project-yaml-configuration-dbt_projectyml)
5. [Models](#models)
6. [Tests](#tests)
7. [Sources](#sources)
8. [Seeds](#seeds)
9. [Macros](#macros)

---

## Introduction to DBT

**DBT (Data Build Tool)** is an open-source tool that helps data engineers and analysts transform raw data in their warehouses into models that power analytics and insights. DBT enables:
- Version-controlled data transformations.
- Modular and reusable SQL-based data pipelines.
- Easy testing and documentation for data pipelines.

---

## Use Case

DBT is used for:
- **Transformations**: Performing ELT (Extract, Load, Transform) processes after data is loaded into the warehouse.
- **Data Quality**: Running tests to validate data integrity.
- **Automation**: Automating SQL-based transformations with schedules or CI/CD.
- **Collaboration**: Sharing modular code and data models within teams.

Example: A retail company uses DBT to clean and aggregate sales data for dashboard reporting.

---

## Project Setup

### Prerequisites
- Install DBT using the appropriate package manager.
- Set up a supported database (e.g., Snowflake, BigQuery, Postgres).
- Initialize a DBT project.

### Directory Structure
The recommended directory structure for a DBT project includes folders for models, macros, seeds, tests, and sources.

---

## Project YAML Configuration (`dbt_project.yml`)

The `dbt_project.yml` file defines the project structure and configurations. Key components include:
- **Project Name**: Specifies the name of the project.
- **Profile**: Links the project to a profile containing credentials.
- **Target Path**: Defines the directory for compiled files.
- **Model Configurations**: Specifies configurations for different model directories.

---

## Models

DBT **models** are SQL files that contain transformations. They enable modular and reusable transformations within the project.

### Commands
- Run all models in the project.
- Run specific models based on selection criteria.

---

## Tests

DBT provides **tests** to validate data quality. 

### Types of Tests
1. **Built-in Tests**: Predefined tests such as `unique` and `not_null`.
2. **Custom Tests**: User-defined SQL tests for specific data validations.

### Commands
- Run tests for validating models and sources.

---

## Sources

**Sources** define raw data tables in your warehouse. They provide a way to map raw data tables to DBT models for transformation.

### Usage
Sources are referenced in DBT models to build transformations directly from raw tables.

---

## Seeds

**Seeds** are static CSV files used to load data into the database. Seeds help in creating reference tables or static data used in transformations.

### Workflow
- Place CSV files in the seeds directory.
- Load seed files into the database using DBT commands.

---

## Macros

**Macros** are reusable SQL snippets written in Jinja2 templates. They allow dynamic and modular SQL generation within DBT projects.

### Usage
Macros can be used in models, tests, or other macros to improve code reusability and simplify complex SQL logic.

---

## Conclusion

DBT empowers data teams to build modular, testable, and automated pipelines with ease. This documentation provides a foundation for understanding and using DBT effectively.
