import csv
import matplotlib.pyplot as plt

# Function to read CSV data skipping the first three rows
def read_csv(file_path):
    with open(file_path, 'r') as file:
        # Skip the first row
        for _ in range(1):
            next(file)
        # Read the rest of the data
        reader = csv.reader(file)
        data = list(reader)
    return data

# Function to plot CSV data
def plot_csv(data):
    VSD_values = [float(row[0]) - float(row[2]) for row in data]
    ID_values = [float(row[3]) for row in data]

    plt.plot(VSD_values, ID_values, color='blue', marker="x", markersize=3)
    plt.xlabel('VSD (V)')
    plt.ylabel('ID (μA)')

    plt.text( 1.5, 145, 'VSG = 1.8 V', color='black', ha='center', va='center', fontsize=12)

    plt.grid(False)

    plt.title('drain current ID versus the source-to-drain voltage VSD', x=0.5)

    # Display the plot
    plt.show()

# Specify the path to your CSV file
csv_file_path = 'PMOS.csv'

# Read CSV data
csv_data = read_csv(csv_file_path)

# Plot the data
plot_csv(csv_data)