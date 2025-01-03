# LITA-CAPSTONE-SALES-PROJECT

This document represents my sales project with The Incubator Hub.

### **Project Title: Analysis of Retail Store's Sales Data**

[Data Sources](#data-sources)

[Tools Used](#tools-used)

[Data Cleaning and Preparations](#data-cleaning-and-preparations)

[Exploratory Data Analysis](#exploratory-data-analysis)

[Data Analysis](#data-analysis)

[Data Visualization](#data-visualization)

### **Project Overview**
---
The goal of this project is to analyze the sales performance of a retail store by exploring sales data to uncover key insights, including top-selling products, regional performance, and monthly sales trends.

### **Data Sources**
---
The primary data source for this project is Data Sale.csv, an open-source dataset freely available for download from platforms like Kaggle or other data repository sites.

### **Tools Used**
---
- Microsoft Excel  [Download](https://www.microsoft.com)
1.  For Data Cleaning
2.  For Analysis
3.  For Visualization

* SQL: Structured Query Language for querying data

* GitHub: Portfolio building

* Power BI: Visualization

 ### **Data Cleaning and Preparation**
In the initial phase of data cleaning and preparation, we perform the following actions:
* Data loading and inspection
* Handling missing variables
* Data cleaning and formatting

### **Exploratory Data Analysis (EDA)**
 ---
EDA involved examining the data to answer various questions such as:
* What is the overall monthly sales trend?
* Which products are the top sellers?
* Which region achieves peak sales?

Here are the steps taken to complete this project:

1. **Cleaning of the Sales Data:**

* Open the Excel Worksheet.

* Highlight the data.

* Click on the Data Tab.

* Select "Remove Duplicates" to eliminate any duplicate entries.

2.Calculate Total Revenue and Average Sales:

* Formula for Total Revenue: =SUM(F2*E2)

* Formula for Average Sales: =AVERAGEIF(C2:C9921, C2, H2:H9921)
![Powerbi Class Project-08](https://github.com/user-attachments/assets/48a78f42-318c-4671-a783-4838027f88a7)
![Powerbi Class Project-09](https://github.com/user-attachments/assets/ae718706-a82a-46b4-b3c7-f2a2172c6f41)
![Powerbi Class Project-02](https://github.com/user-attachments/assets/d20c39ec-4cf0-453a-8da6-39eca3a9eda7)
![Powerbi Class Project-03](https://github.com/user-attachments/assets/e794d00a-0fad-4302-afbd-bba9f0d32f86)

3. **Pivot Table Report:** Displays total sales categorized by region, month, and product.
![Powerbi Class Project-10](https://github.com/user-attachments/assets/f974c2dc-39d2-4380-bdda-f36d7cdbca2d)

### Data Analysis
---
Here, we include basic lines of code, queries, and some of the DAX expressions used during the analysis.

```SQL
SELECT PRODUCT , SUM (Total_Revenue) AS   TOTALSALES
FROM [dbo].[Sales Data]
GROUP BY Product
```

```DAX FUNCTION
Total Sales = SUM('Sales'[SalesAmount])
```

 ### Data Visualization
![Sales Data Visualization_page-0001](https://github.com/user-attachments/assets/b6ca8737-7772-44a9-a137-adbdfa614a30)

**Retail Store Analysis**

Over a two-year period, Capstone Store served a total of 500 customers across four regions. Here is the breakdown:
* **East:** Total Sales of $20,000, generating a total revenue of $486,000 from four products—Hats, Jackets, Shoes, and Shirts.
* **North:** Total Sales of $12,000, generating $387,000 from three products—Hats, Jackets, and Shirts.
* **South:** Total Sales of $24,000, generating $928,000 from three products—Gloves, Shoes, and Socks.
* **West:** Total Sales of $11,000, generating $300,000 from four products—Gloves, Hats, Shoes, and Socks.
  



