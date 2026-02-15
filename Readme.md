# 🌍 Air Quality Index (AQI) Analysis Dashboard – Jabalpur

## 📊 Project Overview

This project analyzes Air Quality Index (AQI) data across multiple monitoring stations in Jabalpur to identify pollution hotspots, temporal trends, and dominant pollutants.
The dataset was cleaned in Excel, validated using SQL, and visualized in Power BI to generate actionable environmental insights.

---

## 📷 Dashboard Preview

<img width="1722" height="694" alt="Dashboard_preview" src="https://github.com/user-attachments/assets/3343941b-3373-41b8-b6d1-b104cda9f6a7" />


---

## 🔍 Key Insights & Findings

* **Peak Pollution Period:** AQI levels showed noticeable spikes during winter months and late-year periods, indicating seasonal pollution buildup.
* **Primary Pollutant:** **PM2.5** was the dominant pollutant responsible for most “Poor” and “Very Poor” AQI days across stations.
* **Critical Hotspot:** Among all stations, one station consistently recorded the **highest average AQI**, indicating localized pollution concentration compared to other monitoring locations.
* **Trend Analysis:** AQI trends showed fluctuations across months, with several periods of moderate-to-poor air quality rather than consistently clean conditions.
* **Worst AQI Days:** A few extreme AQI days crossed severe thresholds, highlighting short-term pollution spikes.
* **AQI Category Distribution:** Most recorded days fell under **Moderate to Poor** AQI categories, indicating persistent air quality concerns.

---

## 🛠 Tech Stack & Process

### 1️⃣ Data Cleaning – Excel

* Cleaned and standardized multiple station datasets
* Handled null values and formatting issues
* Appended all station files into one final dataset
* Created additional calculated columns for analysis

### 2️⃣ Data Validation – SQL

* Validated KPIs such as:

  * Average AQI
  * Maximum AQI
  * Station-wise averages
  * Worst AQI days
* Ensured dashboard numbers match backend calculations

### 3️⃣ Data Visualization – Power BI

* Built interactive dashboard with:

  * Station-wise AQI comparison
  * Monthly and daily trends
  * Dominant pollutant analysis
  * Worst AQI day tracking
* Added slicers and filters for dynamic analysis

---

## 📂 Repository Structure

```
├── data/
│   ├── raw_data/
│   └── cleaned_data/
│
├── sql/
│   └── sql_queries.sql
│
├── dashboard/
│   └── Jabalpur_AQI_Dashboard.pbix
│
├── images/
│   └── dashboard_overview.png
│
└── README.md
```

---

## 💡 Recommendations

* Focus pollution control measures on stations showing consistently high AQI.
* Strengthen monitoring during peak pollution months.
* Use dominant pollutant trends to guide emission-reduction strategies.
* Improve public awareness during poor AQI periods.

---

## 👨‍💻 Author

**Suyog Lodhi**
Aspiring Data Analyst | Excel | SQL | Power BI

LinkedIn:
[www.linkedin.com/in/suyog-lodhi-94a45825a](http://www.linkedin.com/in/suyog-lodhi-94a45825a)

---
