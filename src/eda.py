#EDA
#Churn Distribution
plt.figure(figsize=(6,4))

sns.countplot(x='Churn',data=df)

plt.title("Customer Churn Distribution")
plt.show()

#Exact Churn Rate
churn_rate=(df['Churn'].value_counts(normalize=True)*100)

print(churn_rate)

#Contract Type vs Churn
plt.figure(figsize=(8,5))

sns.countplot(x='Contract',hue='Churn',data=df)

plt.title("Contract Type vs Churn")
plt.show()

#Monthly Charges vs Churn
plt.figure(figsize=(8,5))

sns.boxplot(x='Churn',y='MonthlyCharges',data=df)

plt.title("Monthly Charges vs Churn")
plt.show()

#Tenure vs Churn
plt.figure(figsize=(8,5))

sns.boxplot(x='Churn',y='tenure',data=df)

plt.title("Tenure vs Churn")
plt.show()

