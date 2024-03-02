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
    VSD_values = [float(row[1]) for row in data]
    ID_values = [float(row[0]) for row in data]

    plt.figure(figsize=(12, 8))

    plt.plot(VSD_values, ID_values, color='blue', marker="x", markersize=3)
    plt.xlabel('VSD (V)')
    plt.ylabel('ID (μA)')

    plt.axhline(y=22.3, xmin=0, xmax=0.2, color='red', linestyle='--')
    plt.text(x=0.331, y=22.3, s='IREF = 22.3 μA', color='red', verticalalignment='center')

    plt.axhline(y=66.9, xmin=0, xmax=0.72, color='red', linestyle='--')
    plt.text(x=1.35, y=66.9, s='IIdeal = 66.9 μA', color='red', verticalalignment='center')

    plt.axvline(x=1.11, ymin=0, ymax=0.95, color='fuchsia', linestyle='--')
    plt.text(x=1.11, y=69.7, s='1.11 V', color='fuchsia', horizontalalignment='center', verticalalignment='center')

    plt.axvline(x=0.668, ymin=0, ymax=0.95, color='fuchsia', linestyle='--')
    plt.text(x=0.668, y=69.7, s='VSG = 668 mV', color='fuchsia', horizontalalignment='center', verticalalignment='center')

    plt.grid(False)

    plt.title('drain current ID versus the source-to-drain voltage VSD', x=0.5)

    # Display the plot
    plt.show()

# Specify the path to your CSV file
csv_file_path = 'data1.csv'

# Read CSV data
csv_data = read_csv(csv_file_path)

# Plot the data
plot_csv(csv_data)