import csv
import matplotlib.pyplot as plt

# Function to read CSV data skipping the first three rows
def read_csv(file_path):
    with open(file_path, 'r') as file:
        # Skip the first four rows
        for _ in range(2):
            next(file)
        # Read the rest of the data
        reader = csv.reader(file)
        data = list(reader)
    return data

# Function to plot CSV data
def plot_csv(data):
    time_values = [float(row[0]) * 1e6 for row in data]
    ch1_values = [float(row[1]) * 1 for row in data]
    ch2_values = [float(row[2]) * 1 for row in data]
    ch3_values = [float(row[3]) * 1 for row in data]
    ch4_values = [float(row[4]) * 1 for row in data]

    # Creating subplots for each channel
    plt.figure(figsize=(12, 8))

    # Subplot for Channel 1
    plt.subplot(4, 1, 1)
    plt.plot(time_values, ch1_values, color='blue', marker='o', markersize=0.1)
    plt.ylabel('Voltage (V)')
    plt.title('Channel 1: CLK')
    plt.tick_params(axis='x', which='both', bottom=False, top=False, labelbottom=False)  # Remove x-axis labels

    # Subplot for Channel 2
    plt.subplot(4, 1, 2)
    plt.plot(time_values, ch2_values, color='green', marker='o', markersize=0.1)
    plt.ylabel('Voltage (V)')
    plt.title('Channel 2: LD')
    plt.tick_params(axis='x', which='both', bottom=False, top=False, labelbottom=False)  # Remove x-axis labels

    # Subplot for Channel 3
    plt.subplot(4, 1, 3)
    plt.plot(time_values, ch3_values, color='red', marker='o', markersize=0.1)
    plt.ylabel('Voltage (V)')
    plt.title('Channel 3: CLR')
    plt.tick_params(axis='x', which='both', bottom=False, top=False, labelbottom=False)  # Remove x-axis labels

    # Subplot for Channel 4
    plt.subplot(4, 1, 4)
    plt.plot(time_values, ch4_values, color='violet', marker='o', markersize=0.1)
    plt.xlabel('Time (μs)')
    # plt.xlabel('Time (ns)')
    plt.ylabel('Voltage (V)')
    plt.title('Channel 4: Vout')

    # Adjust layout
    plt.tight_layout()

    # Adjust spacing between subplots and big title
    plt.subplots_adjust(top=0.9)

    # Add a big title to the entire figure
    plt.suptitle('DAC U1015', x=0.5)

    # Display the plot
    plt.show()

# Specify the path to your CSV file
csv_file_path = 'scope_1.csv'

# Read CSV data
csv_data = read_csv(csv_file_path)

# Plot the data
plot_csv(csv_data)