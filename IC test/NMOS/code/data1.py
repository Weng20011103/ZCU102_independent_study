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
    plt.xlabel('VDS (V)')
    plt.ylabel('ID (μA)')

    plt.axhline(y=3.4, xmin=0, xmax=0.2, color='red', linestyle='--')
    plt.text(x=0.331, y=3.4, s='IREF = 3.4 μA', color='red', verticalalignment='center')

    plt.axhline(y=10.2, xmin=0, xmax=0.2, color='red', linestyle='--')
    plt.text(x=0.331, y=10.2, s='IIdeal = 10.2 μA', color='red', verticalalignment='center')

    plt.axvline(x=0.056, ymin=0, ymax=0.6, color='fuchsia', linestyle='--')
    plt.text(x=0.056, y=17.1, s='56 mV', color='fuchsia', horizontalalignment='center', verticalalignment='center')

    plt.axvline(x=0.1518, ymin=0, ymax=0.7, color='fuchsia', linestyle='--')
    plt.text(x=0.1518, y=19.8, s='VGS = 151.8 mV', color='fuchsia', horizontalalignment='center', verticalalignment='center')

    plt.grid(False)

    plt.title('drain current ID versus the drain-to-sourcevoltage VDS', x=0.5)

    plt.ylim(0,28)

    # Display the plot
    plt.show()

# Specify the path to your CSV file
csv_file_path = 'data1.csv'

# Read CSV data
csv_data = read_csv(csv_file_path)

# Plot the data
plot_csv(csv_data)