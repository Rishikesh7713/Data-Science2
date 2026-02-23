import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import seaborn as sns

df=pd.read_csv("Penguins Data.csv")
df = df.dropna()

df.head()

df.shape

df.columns

df.describe()

df.isnull().sum()

print(df.info())
print(df.columns)

df['Culmen Length (mm)'].value_counts()

df['Culmen Depth (mm)'].value_counts()

df['Body Mass (g)'].value_counts()

plt.figure(figsize=(20, 10))
sns.heatmap(df.corr(numeric_only=True), annot=True, cmap='terrain')
plt.show()

sns.countplot(x='Culmen Length (mm)', data=df, palette='husl', hue='target')
plt.show()

sns.countplot(x='Culmen Depth (mm)', palette='BuGn', data=df)
plt.show()

sns.countplot(x='Body Mass (g)', hue="target", data=df)
plt.show()