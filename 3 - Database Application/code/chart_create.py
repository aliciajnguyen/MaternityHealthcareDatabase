from matplotlib import pyplot as plt
import pandas as pd

birth_counts = pd.read_csv(filepath_or_buffer=r"C:\Users\alici\Desktop\birthcounts.csv", header=None)
birth_counts.columns=['month', 'birthCounts']

plt.scatter(birth_counts["month"], birth_counts["birthCounts"])

plt.hist(birth_counts["birthCounts"], birth_counts["month"])
plt.legend()
plt.xlabel('Month')
plt.ylabel('Birth Counts')
plt.xticks(range(9, 12)) 
plt.show()