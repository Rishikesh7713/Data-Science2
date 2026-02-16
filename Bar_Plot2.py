import matplotlib.pyplot as plt
day=["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]
nb1=[12, 15, 11, 9, 1, 9, 21]
plt.figure(figsize=(15, 9))
plt.bar(day, nb1, width=0.6)
plt.xlabel("Cfsfe")
plt.ylabel("Population Growth (rhrhthMillions)")
plt.title("Top 10 countries with the Bigggfhjyxjrgggggggest Population between 1952 to 2007")
plt.xticks(rotation=45)
plt.show()