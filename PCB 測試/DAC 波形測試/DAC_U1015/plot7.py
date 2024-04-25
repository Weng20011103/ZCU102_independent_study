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
    time_values = [float(row[0]) * 1e9 for row in data]
    ch3_values = [float(row[3]) * 1 for row in data]
    ch4_values = [float(row[4]) * 1 for row in data]

    # Creating subplots for each channel
    plt.figure(figsize=(12, 8))

    # Subplot for Channel 1
    plt.subplot(2, 1, 1)
    plt.plot(time_values, ch3_values, color='blue', marker='o', markersize=0.1)
    plt.ylabel('Voltage (V)')
    plt.title('Channel 3: CLR')
    plt.ylim(-0.5, 2.4)
    plt.grid(True)
    plt.gca().yaxis.grid(False, which='both')  # Only vertical lines
    plt.tick_params(axis='x', which='both', bottom=False, top=False, labelbottom=False)  # Remove x-axis labels

    for i in range (10):
        plt.text(9925+50*i, 1, f'{199+i}', color='black', ha='center', va='center', fontsize=15)

    # Subplot for Channel 2
    plt.subplot(2, 1, 2)
    plt.plot(time_values, ch4_values, color='green', marker='o', markersize=0.1)
    plt.title('Channel 4: Vout')
    plt.xlabel('Time (ns)')
    plt.ylabel('Voltage (V)')
    plt.ylim(-0.5, 2.4)
    plt.grid(True)
    # Disable horizontal lines
    plt.gca().yaxis.grid(False, which='both')  # Only vertical lines
    
    for i in range (10):
        plt.text(9925+50*i, 1.5, f'{199+i}', color='black', ha='center', va='center', fontsize=15)

    # Adjust layout
    plt.tight_layout()

    # Adjust spacing between subplots and big title
    plt.subplots_adjust(top=0.9)

    # Add a big title to the entire figure
    plt.suptitle('DAC U1015', x=0.5)

    # Display the plot
    plt.show()

# Specify the path to your CSV file
csv_file_path = 'scope_7.csv'

# Read CSV data
csv_data = read_csv(csv_file_path)

# Plot the data
plot_csv(csv_data)