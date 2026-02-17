import pandas as pd
import numpy as np
import seaborn as sns
import matplotlib.pyplot as plt

df=pd.read_csv("Penguins Data.csv")
df.head()
x=df["Culmen Length (mm)"]
y=df["Body Mass (g)"]
colors=["Red", "Green"]
sns.pairplot(df)
plt.scatter(data=df, x=x, y=y, c=colors)
plt.title("Culmen Length vs Body Mass")
plt.show()