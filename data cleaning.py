#Import Libraries

import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns

#Load the Dataset

import pandas as pd

df = pd.read_excel("indian_mobile_phones_with_images_and_reviews.xlsx")

print(df.head())

#Check the dataset.

df.head()

#Understand the Dataset

df.info()

#Check missing values.

df.isnull().sum()

#Basic statistics.

df.describe()

#Data Cleaning

df = df.drop_duplicates()

#Convert numeric columns if needed.

df["Price_INR"] = pd.to_numeric(df["Price_INR"], errors="coerce")

#Step 6 — Basic Insights
#Average Rating

df["Avg_Rating"].mean()

#Most Expensive Phones

df.sort_values("Price_INR", ascending=False).head(10)

#Phones With Highest Ratings

df.sort_values("Avg_Rating", ascending=False).head(10)

#Step 7 — Brand Analysis and Visualization:

brand_rating = df.groupby("Brand")["Avg_Rating"].mean().sort_values(ascending=False)
print(brand_rating)
plt.figure(figsize=(10,6))
brand_rating.plot(kind="bar")
plt.title("Average Rating by Brand")
plt.xlabel("Brand")
plt.ylabel("Average Rating")
plt.show()

#Step 8 — Price vs Rating Analysis

plt.figure(figsize=(8,6))
sns.scatterplot(data=df, x="Price_INR", y="Avg_Rating")
plt.title("Price vs Rating")
plt.show()

#Step 9 — Battery vs Rating

plt.figure(figsize=(8,6))
sns.scatterplot(data=df, x="Battery_mAh", y="Avg_Rating")
plt.title("Battery Capacity vs Rating")
plt.show()

#Step 10 — Reviews Sentiment Analysis and Visualization:

sentiment_totals = df[["Positive_Reviews","Neutral_Reviews","Negative_Reviews"]].sum()
print(sentiment_totals)
sentiment_totals.plot(kind="pie", autopct="%1.1f%%")
plt.title("Overall Review Sentiment")
plt.show()

#Step 11 — Launch Year Trend

year_rating = df.groupby("Launch_Year")["Avg_Rating"].mean()

year_rating.plot(kind="line", marker="o")
plt.title("Average Rating by Launch Year")
plt.xlabel("Year")
plt.ylabel("Rating")
plt.show()

#Step 12 — Top Reviewed Phones

top_reviews = df.sort_values("Total_Reviews", ascending=False).head(10)

plt.figure(figsize=(10,6))
sns.barplot(data=top_reviews, x="Total_Reviews", y="Model_Name")
plt.title("Top Reviewed Phones")
plt.show()

#Step 13 — Export Clean Dataset (Optional)

df.to_csv("clean_mobile_dataset.csv", index=False)
