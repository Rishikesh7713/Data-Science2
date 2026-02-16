import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns

df=pd.read_csv("Penguins Data.csv")
type=[df["Culmen Length (mm)"], df["Culmen Depth (mm)"]]
colors=['g', 'r']
label=['Culmen Length', 'Culmen Depth']
bins=[80, 100, 125, 150]
plt.xlabel("Penguin - Culmen Length")
plt.ylabel("Penguin - Culmen Depth")

plt.hist(type, bins=bins, width=0.95, color=colors,
         label=label, orientation="horizontal")

plt.title("Penguin Chart")
plt.legend()
plt.show()