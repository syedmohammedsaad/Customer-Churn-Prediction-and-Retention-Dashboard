#Import Libraries
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import seaborn as sns

#Load Dataset
df=pd.read_csv('../data/raw/WA_Fn-UseC_-Telco-Customer-Churn.csv')

print("Rows:",df.shape[0])
print("Columns:",df.shape[1])

df.head()

df.info()

#Missing Values

df.isnull().sum()

#TotalCharges Cleaning
df['TotalCharges']=pd.to_numeric(df['TotalCharges'],errors='coerce')

print("Missing TotalCharges:",df['TotalCharges'].isnull().sum())

#Drop Nulls
df.dropna(inplace=True)

print(df.shape)

import pandas as pd

# Load original dataset
df = pd.read_csv("../data/raw/WA_Fn-UseC_-Telco-Customer-Churn.csv")

# Example cleaning
df.drop_duplicates(inplace=True)

# Save cleaned dataset
df.to_csv("../data/processed/cleaned_churn_data.csv", index=False)

print("Cleaned dataset saved successfully!")
