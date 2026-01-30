[0. README Documentation & Folder Guide.md](https://github.com/user-attachments/files/24975328/0.README.Documentation.Folder.Guide.md)
# **APAN 5400 Final Project – Documentation & Folder Guide**

## **Project Overview**

This project builds an end-to-end ETL and analytics pipeline integrating **airline delay**, **weather**, and **hurricane** datasets. The workflow includes:

* **Extraction** using Python/Spark APIs  
* **Storage** in MongoDB  
* **Cleaning & Transformation**  
* **Loading** into PostgreSQL  
* **Modeling** delay predictions with Python  
* **Visualization** in Tableau  
* **Deployment** via Flask

The folders below map directly to the stages of this pipeline.

**📁 Folder Guide**

**1\. API \+ MongoDB**

Notebooks for extracting all raw datasets and storing them in MongoDB.

* **Airline Delay API \+ MongoDB.ipynb**  
* **Hurricane API \+ MongoDB.ipynb**  
* **Weather API \+ MongoDB.ipynb**

Each notebook handles:

* API connection  
* Data retrieval  
* Initial formatting  
* Insertion into MongoDB collections

**2\. MongoDB \+ PostgreSQL**

Handles data cleaning and loading into PostgreSQL.

* **MongoDB to PostgreSQL.ipynb**  
  * Cleans the three datasets  
  * Standardizes monthly date fields  
  * Exports cleaned CSVs  
  * Loads into PostgreSQL staging tables  
* **PostgreSQL Query.sql**  
  * Creates staging tables  
  * Performs left joins to produce the final fact table  
* **Raw CSV files/** – cleaned files used for SQL loading

## **3\. Python – Weather-Delay Correlation & Modeling**

Notebook for analysis and forecasting.

* **Correlation between weather severity and flight delay probabilities & predictions.ipynb**  
  Includes:  
  * Correlation analysis between weather variables and delays  
  * RandomForest predictions for future delay rates  
* **CSV Files/** – modeling inputs  
* **DNU/** – unused files

## **4\. Tableau Dashboards**

Interactive visualizations.

* **Weather & Flight Delays\_Historical.twbx**  
* **Weather & Flight Delays\_Predictive.twbx**

Dashboards show historical delays, weather patterns, and model-based forecasts.

**5\. Flask App**

Lightweight deployment layer embedding Tableau dashboards.

* **Flask\_UI.ipynb**  
  Contains the Flask setup \+ HTML template for dashboard embedding.

**6\. Final Presentation**

Contains the **final PowerPoint deck** summarizing the entire pipeline, methodology, dashboards, and findings.  
**File:** APAN5400 – Final Project Presentation – Team 1.pptx

**Pipeline Mapping (Quick Reference)**

| Step | Folder |
| ----- | ----- |
| Extract | **1\. API \+ MongoDB** |
| Transform / Clean | **2\. MongoDB \+ PostgreSQL** |
| Load | **2\. MongoDB \+ PostgreSQL** |
| Analyze | **3\. Python – Modeling** |
| Visualize | **4\. Tableau Dashboards** |
| Deploy | **5\. Flask App** |
| Present | **6\. Final Presentation** |

