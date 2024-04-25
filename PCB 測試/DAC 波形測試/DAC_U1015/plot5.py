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

    # Subplot for Channel 3
    plt.subplot(2, 1, 1)
    plt.plot(time_values, ch3_values, color='red', marker='o', markersize=0.1)
    plt.title('Channel 3: CLR')
    plt.ylabel('Voltage (V)')
    plt.ylim(-0.5, 2.4)
    plt.grid(True)
    # Disable horizontal lines
    plt.gca().yaxis.grid(False, which='both')  # Only vertical lines
    plt.tick_params(axis='x', which='both', bottom=False, top=False, labelbottom=False)  # Remove x-axis labels
    plt.text(10000, 1.0, 'state 201', color='black', ha='left', va='center', fontsize=10)

    # Subplot for Channel 4
    plt.subplot(2, 1, 2)
    plt.plot(time_values, ch4_values, color='violet', marker='o', markersize=0.1)
    plt.title('Channel 4: Vout')
    plt.xlabel('Time (ns)')
    plt.ylabel('Voltage (V)')
    plt.ylim(-0.3, 1.3)
    plt.grid(True)
    # Disable horizontal lines
    plt.gca().yaxis.grid(False, which='both')  # Only vertical lines
    
    plt.arrow(10000, 1.1, 2470, 0, head_width=0.1, head_length=30, fc='blue', ec='blue')
    plt.text(10000, 1.1, '10000 ns', color='blue', ha='left', va='bottom', fontsize=10)
    plt.text(11250, 1.1, 'Go to 0 V', color='violet', ha='center', va='bottom', fontsize=15)
    plt.text(12450, 1.1, '12450 ns', color='blue', ha='right', va='bottom', fontsize=10)

    # Adjust layout
    plt.tight_layout()

    # Adjust spacing between subplots and big title
    plt.subplots_adjust(top=0.9)

    # Add a big title to the entire figure
    plt.suptitle('DAC U1015, scope_5.csv', x=0.5)

    # Display the plot
    plt.show()

# Specify the path to your CSV file
csv_file_path = 'scope_5.csv'

# Read CSV data
csv_data = read_csv(csv_file_path)

# Plot the data
plot_csv(csv_data)