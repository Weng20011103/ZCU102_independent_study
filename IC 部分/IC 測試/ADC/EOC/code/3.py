import csv
import matplotlib.pyplot as plt

# Function to read CSV data skipping the first three rows
def read_csv(file_path):
    with open(file_path, 'r') as file:
        # Skip the first three rows
        for _ in range(2):
            next(file)
        # Read the rest of the data
        reader = csv.reader(file)
        data = list(reader)
    return data

# Function to plot CSV data
def plot_csv(data):
    time_values = [float(row[0]) * 1e9 for row in data]
    ch1_values = [float(row[1]) * 1 for row in data]
    ch2_values = [float(row[2]) * 1 for row in data]

    # Creating subplots for each channel
    plt.figure(figsize=(12, 8))

    # Subplot for Channel 1
    plt.subplot(2, 1, 1)
    plt.plot(time_values, ch1_values, color='blue', marker='o', markersize=0.1)
    plt.xlabel('Time (ns)')
    plt.ylabel('Voltage (V)')
    plt.title('Channel 1: CONVST')
    plt.grid(True)

    # Subplot for Channel 2
    plt.subplot(2, 1, 2)
    plt.plot(time_values, ch2_values, color='green', marker='o', markersize=0.1)
    plt.xlabel('Time (ns)')
    plt.ylabel('Voltage (V)')
    plt.title('Channel 2: EOC')
    plt.grid(True)


    # Adjust layout
    plt.tight_layout()

    # Adjust spacing between subplots and big title
    plt.subplots_adjust(top=0.9)

    # Add a big title to the entire figure
    plt.suptitle('ADC, 3.png, 3.csv', x=0.5)

    # Display the plot
    plt.show()

# Specify the path to your CSV file
csv_file_path = '3.csv'

# Read CSV data
csv_data = read_csv(csv_file_path)

# Plot the data
plot_csv(csv_data)