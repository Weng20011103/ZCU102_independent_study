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
    ch2_values = [float(row[2]) * 1 for row in data]
    ch3_values = [float(row[3]) * 1 for row in data]
    ch4_values = [float(row[4]) * 1 for row in data]

    # Creating subplots for each channel
    plt.figure(figsize=(12, 8))

    # Subplot for Channel 2
    plt.subplot(3, 1, 1)
    plt.plot(time_values, ch2_values, color='violet', marker='o', markersize=0.1)
    plt.ylabel('Voltage (V)')
    plt.title('Channel 2: DAC Vout')
    plt.tick_params(axis='x', which='both', bottom=False, top=False, labelbottom=False)  # Remove x-axis labels
    plt.grid(True)
    plt.gca().yaxis.grid(False, which='both')  # Only vertical lines

    # Subplot for Channel 3
    plt.subplot(3, 1, 2)
    plt.plot(time_values, ch3_values, color='blue', marker='o', markersize=0.1)
    plt.ylabel('Voltage (V)')
    plt.title('Channel 3: MUX EN signal, logic 1 when state 180 and 181')
    plt.tick_params(axis='x', which='both', bottom=False, top=False, labelbottom=False)  # Remove x-axis labels
    plt.grid(True)
    plt.gca().yaxis.grid(False, which='both')  # Only vertical lines
    plt.text(8.85, 1.0, 'state 182', color='black', ha='left', va='center', fontsize=10)

    # Subplot for Channel 4
    plt.subplot(3, 1, 3)
    plt.plot(time_values, ch4_values, color='green', marker='o', markersize=0.1)
    plt.xlabel('Time (μs)')
    # plt.xlabel('Time (ns)')
    plt.ylabel('Voltage (V)')
    plt.title('Channel 4: PBL Voltage, load with 10 kΩ resistor')
    plt.grid(True)
    plt.gca().yaxis.grid(False, which='both')  # Only vertical lines

    # Adjust layout
    plt.tight_layout()

    # Adjust spacing between subplots and big title
    plt.subplots_adjust(top=0.9)

    # Add a big title to the entire figure
    plt.suptitle('DAC U1004, scope_5.csv', x=0.5)

    # Display the plot
    plt.show()

# Specify the path to your CSV file
csv_file_path = 'scope_5.csv'

# Read CSV data
csv_data = read_csv(csv_file_path)

# Plot the data
plot_csv(csv_data)