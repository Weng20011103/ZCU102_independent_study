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
    Is_values = [float(row[0]) for row in data]
    Vout_values = [float(row[1]) for row in data]

    plt.figure(figsize=(12, 8))

    plt.plot(Is_values, Vout_values, color='blue', marker="x", markersize=3)
    plt.xlabel('Is (μA)')
    plt.ylabel('Vout (V)')

    plt.axhline(y=0.0038, xmin=0.07, xmax=0.1, color='fuchsia', linestyle='--')
    plt.text(x=42, y=0.0038, s='Vout = 3.8 mV', color='fuchsia', verticalalignment='center')

    # plt.axhline(y=66.9, xmin=0, xmax=0.72, color='red', linestyle='--')
    # plt.text(x=1.35, y=66.9, s='IIdeal = 66.9 μA', color='red', verticalalignment='center')

    plt.axvline(x=13.5, ymin=0.06, ymax=0.11, color='red', linestyle='--')
    plt.text(x=13.5, y=0.3, s='Is = 13.5 μA', color='red', horizontalalignment='center', verticalalignment='center')

    # plt.axvline(x=0.668, ymin=0, ymax=0.95, color='fuchsia', linestyle='--')
    # plt.text(x=0.668, y=69.7, s='VSG = 668 mV', color='fuchsia', horizontalalignment='center', verticalalignment='center')

    plt.grid(False)

    plt.title('Shunt current Is versus the voltage Vout', x=0.5)

    # Display the plot
    plt.show()

# Specify the path to your CSV file
csv_file_path = 'data.csv'

# Read CSV data
csv_data = read_csv(csv_file_path)

# Plot the data
plot_csv(csv_data)