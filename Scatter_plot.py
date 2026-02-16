import pandas as pd
import numpy as np
import seaborn as sns
import matplotlib.pyplot as plt

HouseDf=pd.read_csv("USA_Housing (1).csv")

HouseDf.head()

HouseDf.info()

HouseDf.columns

sns.pairplot(HouseDf)

sns.heatmap(HouseDf.select_dtypes(include=np.number).corr(), annot=True)

plt.show()