import csv
import matplotlib.pyplot as plt

# Function to read CSV data skipping the first three rows
def read_csv(file_path):
    with open(file_path, 'r') as file:
        # Skip the first three rows
        for _ in range(3):
            next(file)
        # Read the rest of the data
        reader = csv.reader(file)
        data = list(reader)
    return data

# Function to plot CSV data
def plot_csv(data):
    time_values = [float(row[0]) * 1e9 for row in data]
    ch1_values = [float(row[1]) * 1 for row in data]

    plt.plot(time_values, ch1_values, color='blue', marker='o', markersize=0.1)
    plt.xlabel('Time (ns)')
    plt.ylabel('Voltage (V)')
    plt.title('Channel 1: CONVST')
    plt.grid(True)

    plt.title('ADC, 3.png, 3.csv')

    # Display the plot
    plt.show()

# Specify the path to your CSV file
csv_file_path = '3.csv'

# Read CSV data
csv_data = read_csv(csv_file_path)

# Plot the data
plot_csv(csv_data)