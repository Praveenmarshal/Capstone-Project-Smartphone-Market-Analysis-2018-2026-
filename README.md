# 📊 Smartphone Market Analysis Dashboard (2018–2026)

## 📌 Project Overview

This project analyzes smartphone market data from **2018 to 2026** to uncover insights about **pricing trends, customer ratings, brand performance, and feature impact**.

The goal of this analysis is to understand how smartphone specifications such as **battery capacity, camera resolution, RAM, and processor type** influence **customer ratings, price distribution, and market trends**.

The project demonstrates a **complete data analytics workflow**, including:

* Data Cleaning
* Exploratory Data Analysis (EDA)
* SQL-based business insights
* Interactive Power BI dashboard development

---

# 🛠 Tools & Technologies Used

| Tool                     | Purpose                             |
| ------------------------ | ----------------------------------- |
| **Python (Pandas)**      | Data cleaning and preprocessing     |
| **Matplotlib / Seaborn** | Exploratory data visualization      |
| **SQL**                  | Analytical queries and insights     |
| **Power BI**             | Interactive dashboard creation      |
| **GitHub**               | Project documentation and portfolio |

---

# 📂 Project Structure

```
mobile-phone-market-analysis
│
├── dataset
│   └── indian_mobile_phones_with_images_and_reviews.xlsx
│
├── python_analysis
│   └── data_cleaning.py
│
├── sql_queries
│   └── sql_analysis_mobiles.sql
│
├── powerbi_dashboard
│   └── smartphone_dashboard.pbix
│
├── dashboard_images
│   ├── market_overview.png
│   ├── brand_performance.png
│   ├── feature_analysis.png
│   ├── customer_sentiment.png
│   └── price_vs_rating.png
│
└── README.md
```

---

# 🧹 Data Cleaning Process

The dataset was cleaned using Python to ensure data quality before analysis.

Key cleaning steps:

* Removed duplicate records
* Converted **Price_INR** column to numeric format
* Checked missing values
* Performed exploratory data analysis

Example Python code used in the project:

```python
df = pd.read_excel("indian_mobile_phones_with_images_and_reviews.xlsx")

df = df.drop_duplicates()

df["Price_INR"] = pd.to_numeric(df["Price_INR"], errors="coerce")
```

---

# 📊 Dashboard Pages

## 1️⃣ Market Overview

Provides a high-level summary of the smartphone market.

Key metrics:

* Average smartphone price
* Average customer rating
* Total reviews
* Positive review trends

Insights:

* Apple dominates the premium pricing segment
* Samsung releases the highest number of smartphone models
* Most devices now support 5G connectivity

---

## 2️⃣ Brand Performance Analysis

Analyzes how different brands perform based on:

* Customer ratings
* Total reviews
* Price distribution

Key insight:

Some mid-range brands offer **high customer ratings at lower prices**, making them strong competitors in the market.

---

## 3️⃣ Feature Analysis

Examines how smartphone specifications impact performance.

Features analyzed:

* Battery capacity
* Camera resolution
* RAM
* Processor type

Key insight:

Phones with **higher battery capacity tend to receive slightly better customer ratings**.

---

## 4️⃣ Customer Sentiment Analysis

Analyzes review sentiment using:

* Positive reviews
* Neutral reviews
* Negative reviews

Key insight:

The majority of customer feedback is **positive**, indicating strong user satisfaction with most smartphone models.

---

## 5️⃣ Price vs Rating Insights

Scatter plot analysis comparing **smartphone price vs customer ratings**.

Key insight:

* Apple devices occupy the **premium price segment**
* Samsung devices dominate the **mid-range segment**
* Budget brands often deliver **competitive ratings at lower prices**

---

# 📈 Key Business Insights

From the analysis, several important trends were discovered:

• Apple dominates the **high-end smartphone price segment**

• Samsung releases the **largest number of smartphone models**

• **5G smartphones represent over 60% of devices**

• Higher battery capacity shows **positive correlation with customer ratings**

• Several mid-range brands provide **excellent value for money**

---

# 📷 Dashboard Preview

## Market Overview

*(Insert screenshot here)*

## Brand Performance

*(Insert screenshot here)*

## Feature Analysis

*(Insert screenshot here)*

## Customer Sentiment

*(Insert screenshot here)*

## Price vs Rating Insights

*(Insert screenshot here)*

---

# 🚀 Future Improvements

Potential enhancements for this project:

* Implement machine learning models to **predict smartphone ratings**
* Perform **sentiment analysis using NLP on review text**
* Build a **price prediction model**
* Integrate additional datasets for deeper market analysis

---

# 📬 Contact

Email: praveenkicha01@gmail.com

phone : 8825870266

If you have feedback or suggestions, feel free to connect.

**LinkedIn:** *(www.linkedin.com/in/praveen-kannan-6862382a2)*
**GitHub:** *([https://github.com/Praveenmarshal)*

---

⭐ If you found this project useful, consider giving it a **star** on GitHub!
