# 🛒 FFXIV Market Analysis Dashboard  

## 📌 Overview  
This project is a **full-scale data pipeline and dashboard** designed to analyze **Final Fantasy XIV’s** player-driven market. The system **extracts, processes, and visualizes** market board data using a combination of:  
✔ **Python (API calls & data processing)**  
✔ **SQL (data storage & analysis)**  
✔ **Power BI (data visualization & interactive dashboards)**  

With this dashboard, users can:  
✔ **Identify the best crafting classes** based on sales & revenue.  
✔ **Analyze top-selling items** and their efficiency.  
✔ **Detect market saturation & competition levels.**  
✔ **Compare supply & demand trends across crafting classes.**  

This **data-driven approach** helps crafters and traders **maximize profits** by identifying **high-demand, low-competition** opportunities.  

---

## 📂 Data Pipeline & Sources  
### 🔗 APIs & Data Extraction  
- **Universalis API** – Extracts real-time FFXIV market board data.  
- **Python (Requests & Pandas)** – Fetches, cleans, and structures the data.  
- **SQL Database** – Stores historical market trends for deeper analysis.  

### 📊 Data Fields Collected  
The API fetches **detailed market information**, including:  
- `item_id` – Unique identifier for the item.  
- `item_name` – Name of the item (e.g., Iron Ingot, Grade 7 Tincture).  
- `hq` – Boolean indicating **high-quality (HQ)** vs. **normal-quality (NQ)**.  
- `price` – Current selling price.  
- `quantity` – Number of units sold.  
- `timestamp` – Time of market data retrieval.  
- `crafting_class` – Standardized crafting profession (e.g., Blacksmith, Alchemist).  

---

## 🔧 How It Works  
### 1️⃣ **Data Collection & Processing (Python & SQL)**  
- **Python script** queries the Universalis API and normalizes the data using `pandas`.  
- Data is **cleaned and filtered**, removing **unmarketable items** (e.g., quest items).  
- **SQL database** stores and maintains historical price trends for deeper analysis.  
- **SQL queries** extract structured data for Power BI visualization.  

### 2️⃣ **Power BI Dashboard & Analysis**  
- **Calculated DAX measures** enable insights into **sales trends & efficiency**.  
- **Drill-down functionality** allows users to explore **items by crafting class**.  
- **Custom tooltips & slicers** provide detailed market insights at every level.  

---

## 📊 Key Insights & Visualizations  
### ✔ **Market Performance Metrics**  
📌 **Total Market Sales (Gil)** – Tracks total gil volume from sales.  
📌 **Best-Selling Item** – Shows the most traded item.  
📌 **Top Crafting Class by Sales & Revenue** – Determines the most profitable profession.  

### ✔ **Competitive Market Analysis**  
📌 **Market Saturation** – Highlights oversupplied items.  
📌 **Efficiency Score** – Measures item profitability based on sales volume & competition.  
📌 **Supply vs. Demand** – Compares availability vs. sales rates.  

### ✔ **Advanced Drill-Downs & Filtering**  
📌 **Crafting Class Analysis** – Filters data by profession.  
📌 **Item Category Slicer** – Allows detailed analysis of specific item types.  
📌 **Top 10 Best-Selling Items** – Identifies the most in-demand products.  

---

## 🚀 Features & Benefits  
✅ **Real-Time API Data Integration** – Ensures up-to-date market insights.  
✅ **SQL-Based Data Storage** – Allows for historical trend analysis.  
✅ **Automated Data Processing** – Python scripts clean and structure the data.  
✅ **Power BI Visualization** – Provides an intuitive, interactive experience.  
✅ **Dynamic Filtering & Drill-Downs** – Users can explore specific items & trends.  
✅ **Market Saturation Alerts** – Helps players avoid crafting unprofitable items.  

---

## 📈 Use Cases  
📊 **Optimized Crafting Strategy** – Find the most profitable crafting class.  
📈 **Market Trend Analysis** – Identify high-demand, low-competition items.  
🛠 **Supply Chain Management** – Monitor item availability & avoid oversaturation.  
📉 **Efficiency-Based Crafting** – Maximize sales success rates.  

---

## 🛠 Tech Stack  
### **Languages & Tools**  
🐍 **Python** – API requests, data processing (Pandas)  
📡 **Universalis API** – Live market data extraction  
🗄️ **SQL (PostgreSQL/MySQL)** – Historical price tracking & querying  
📊 **Power BI** – Data visualization & interactive dashboards  
📄 **DAX** – Advanced calculations & measures  

---

## 🚀 Future Improvements  
🔹 **Automated SQL Data Refresh** – Implement scheduled API pulls into the database.  
🔹 **Advanced Forecasting Models** – Predict item price fluctuations.  
🔹 **Material Cost Analysis** – Calculate actual crafting profits vs. raw sales.  
🔹 **Player-Specific Profit Tracking** – Allow users to input their own crafting data.  

---

## 📞 Contact Information  
📌 **Created by:** *Kyron Holbrook*  
📧 **Email:** *holbrookkyron@gmail.com*  
🔗 **Portfolio/GitHub:** [Sphynxalot](https://github.com/Sphynxalot) 
🔗 **LinkedIn:** [Kyron Holbrook](https://www.linkedin.com/in/kyron-holbrook/) 
---
