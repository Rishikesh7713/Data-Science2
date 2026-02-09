import matplotlib.pyplot as plt
day=["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]
nb1=[12, 15, 11, 9, 1, 9, 21]
nb2=[17, 5, 2, 11, 1, 8, 29]
plt.plot(day, nb1, "g", linewidth=3, label="New Births 1")
plt.plot(day, nb2, "r", linewidth=3, label="New Births 2")
plt.legend()
plt.show()