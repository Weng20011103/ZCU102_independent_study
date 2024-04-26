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
def plot_csv(data, data2):
    time_values = [float(row[0]) * 1e6 for row in data]
    CLK_values = [float(row[1]) * 1 for row in data]
    Vout_values = [float(row[2]) * 1 for row in data]
    EN_values = [float(row[3]) * 1 for row in data]
    PBL_values = [float(row[4]) * 1 for row in data]
    LD_values = [float(row[2]) * 1 for row in data2]
    CLR_values = [float(row[3]) * 1 for row in data2]

    # Creating subplots for each channel
    plt.figure(figsize=(12, 8))

    plt.subplot(6, 1, 1)
    plt.plot(time_values, CLK_values, color='orange', marker='o', markersize=0.1)
    plt.ylabel('Voltage (V)')
    plt.title('DAC CLK')
    plt.tick_params(axis='x', which='both', bottom=False, top=False, labelbottom=False)  # Remove x-axis labels
    plt.grid(True)
    plt.gca().yaxis.grid(False, which='both')  # Only vertical lines

    plt.subplot(6, 1, 2)
    plt.plot(time_values, LD_values, color='teal', marker='o', markersize=0.1)
    plt.ylabel('Voltage (V)')
    plt.title('DAC LD')
    plt.tick_params(axis='x', which='both', bottom=False, top=False, labelbottom=False)  # Remove x-axis labels
    plt.grid(True)
    plt.gca().yaxis.grid(False, which='both')  # Only vertical lines

    plt.subplot(6, 1, 3)
    plt.plot(time_values, CLR_values, color='red', marker='o', markersize=0.1)
    plt.ylabel('Voltage (V)')
    plt.title('DAC CLR')
    plt.tick_params(axis='x', which='both', bottom=False, top=False, labelbottom=False)  # Remove x-axis labels
    plt.grid(True)
    plt.gca().yaxis.grid(False, which='both')  # Only vertical lines

    plt.subplot(6, 1, 4)
    plt.plot(time_values, EN_values, color='blue', marker='o', markersize=0.1)
    plt.ylabel('Voltage (V)')
    plt.title('MUX EN signal, logic 1 when state 180 and 181')
    plt.tick_params(axis='x', which='both', bottom=False, top=False, labelbottom=False)  # Remove x-axis labels
    plt.grid(True)
    plt.gca().yaxis.grid(False, which='both')  # Only vertical lines

    plt.subplot(6, 1, 5)
    plt.plot(time_values, Vout_values, color='violet', marker='o', markersize=0.1)
    plt.ylabel('Voltage (V)')
    plt.title('DAC Vout')
    plt.tick_params(axis='x', which='both', bottom=False, top=False, labelbottom=False)  # Remove x-axis labels
    plt.grid(True)
    plt.gca().yaxis.grid(False, which='both')  # Only vertical lines

    plt.subplot(6, 1, 6)
    plt.plot(time_values, PBL_values, color='green', marker='o', markersize=0.1)
    plt.xlabel('Time (μs)')
    # plt.xlabel('Time (ns)')
    plt.ylabel('Voltage (V)')
    plt.title('PBL1 Voltage, load with 10 kΩ resistor')
    plt.grid(True)
    plt.gca().yaxis.grid(False, which='both')  # Only vertical lines

    # Adjust layout
    plt.tight_layout()

    # Adjust spacing between subplots and big title
    plt.subplots_adjust(top=0.9)

    # Add a big title to the entire figure
    plt.suptitle('DAC U1004, scope_1.csv', x=0.5)

    # Display the plot
    plt.show()

# Specify the path to your CSV file
csv_file_path = 'scope_1.csv'

# Read CSV data
csv_data = read_csv(csv_file_path)
csv_data2 = read_csv('scope_1_p.csv')

# Plot the data
plot_csv(csv_data, csv_data2)