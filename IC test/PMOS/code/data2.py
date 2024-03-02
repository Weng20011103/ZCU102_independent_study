import csv
import matplotlib.pyplot as plt

# Function to read CSV data skipping the first three rows
def read_csv(file_path):
    with open(file_path, 'r') as file:
        # Skip the first row
        for _ in range(3):
            next(file)
        # Read the rest of the data
        reader = csv.reader(file)
        data = list(reader)
    return data

# Function to plot CSV data
def plot_csv(data):
    VSD_values = [float(row[1]) for row in data if len(row) > 1]
    ID_values = [float(row[0]) for row in data if len(row) > 1]

    plt.figure(figsize=(12, 8))

    plt.plot(VSD_values, ID_values, color='blue', marker="x", markersize=3)
    plt.xlabel('VSD (V)')
    plt.ylabel('ID (μA)')

    plt.axhline(y=8.2, xmin=0, xmax=0.2, color='red', linestyle='--')
    plt.text(x=0.331, y=8.2, s='IREF = 8.2 μA', color='red', verticalalignment='center')

    plt.axhline(y=24.6, xmin=0, xmax=0.72, color='red', linestyle='--')
    plt.text(x=1.35, y=24.6, s='IIdeal = 24.6 μA', color='red', verticalalignment='center')

    plt.axvline(x=1.003, ymin=0, ymax=0.95, color='fuchsia', linestyle='--')
    plt.text(x=1.003, y=25.8, s='1.003 V', color='fuchsia', horizontalalignment='center', verticalalignment='center')

    plt.axvline(x=0.825, ymin=0, ymax=0.91, color='fuchsia', linestyle='--')
    plt.text(x=0.825, y=25, s='VSG = 0.825 V', color='fuchsia', horizontalalignment='center', verticalalignment='center')

    plt.grid(False)

    plt.title('drain current ID versus the source-to-drain voltage VSD', x=0.5)

    # Display the plot
    plt.show()

# Specify the path to your CSV file
csv_file_path = 'data2.csv'

# Read CSV data
csv_data = read_csv(csv_file_path)

# Plot the data
plot_csv(csv_data)