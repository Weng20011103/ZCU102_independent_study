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
def plot_csv(DB7_data, DB6_data, DB5_data, DB4_data, DB3_data, DB2_data, DB1_data, DB0_data):
    time_values = [float(row[0]) * 1e6 for row in DB7_data]
    CONVST_values = [float(row[1]) * 1 for row in DB7_data]
    EOC_values = [float(row[2]) * 1 for row in DB7_data]
    DB7_values = [float(row[3]) * 1 for row in DB7_data]
    DB6_values = [float(row[3]) * 1 for row in DB6_data]
    DB5_values = [float(row[3]) * 1 for row in DB5_data]
    DB4_values = [float(row[3]) * 1 for row in DB4_data]
    DB3_values = [float(row[3]) * 1 for row in DB3_data]
    DB2_values = [float(row[3]) * 1 for row in DB2_data]
    DB1_values = [float(row[3]) * 1 for row in DB1_data]
    DB0_values = [float(row[3]) * 1 for row in DB0_data]

    fig = plt.figure(figsize=(12, 8))
    gs = fig.add_gridspec(10, hspace=0)
    axs = gs.subplots(sharex=True, sharey=True)
    fig.suptitle('ADC reads FMC VADJ 1.8 V')
    axs[0].plot(time_values, CONVST_values, color='blue')
    axs[1].plot(time_values, EOC_values, color='green')
    axs[2].plot(time_values, DB7_values, color='magenta')
    axs[3].plot(time_values, DB6_values, color='aqua')
    axs[4].plot(time_values, DB5_values, color='magenta')
    axs[5].plot(time_values, DB4_values, color='aqua')
    axs[6].plot(time_values, DB3_values, color='magenta')
    axs[7].plot(time_values, DB2_values, color='aqua')
    axs[8].plot(time_values, DB1_values, color='magenta')
    axs[9].plot(time_values, DB0_values, color='aqua')


    axs[0].annotate('CONVST', xy=(-2.3, 1.5), horizontalalignment='center', verticalalignment='center', fontsize=12)
    axs[1].annotate('EOC', xy=(-2.3, 1.5), horizontalalignment='center', verticalalignment='center', fontsize=12)
    axs[2].annotate('DB7', xy=(-2.3, 1.5), horizontalalignment='center', verticalalignment='center', fontsize=12)
    axs[2].annotate('1', xy=(0, 1.5), horizontalalignment='center', verticalalignment='center', fontsize=12)
    axs[3].annotate('DB6', xy=(-2.3, 1.5), horizontalalignment='center', verticalalignment='center', fontsize=12)
    axs[3].annotate('1', xy=(0, 1.5), horizontalalignment='center', verticalalignment='center', fontsize=12)
    axs[4].annotate('DB6', xy=(-2.3, 1.5), horizontalalignment='center', verticalalignment='center', fontsize=12)
    axs[4].annotate('1', xy=(0, 1.5), horizontalalignment='center', verticalalignment='center', fontsize=12)
    axs[5].annotate('DB4', xy=(-2.3, 1.5), horizontalalignment='center', verticalalignment='center', fontsize=12)
    axs[5].annotate('0', xy=(0, 1.5), horizontalalignment='center', verticalalignment='center', fontsize=12)
    axs[6].annotate('DB3', xy=(-2.3, 1.5), horizontalalignment='center', verticalalignment='center', fontsize=12)
    axs[6].annotate('0', xy=(0, 1.5), horizontalalignment='center', verticalalignment='center', fontsize=12)
    axs[7].annotate('DB2', xy=(-2.3, 1.5), horizontalalignment='center', verticalalignment='center', fontsize=12)
    axs[7].annotate('0 or 1', xy=(0, 1.5), horizontalalignment='center', verticalalignment='center', fontsize=12)
    axs[8].annotate('DB1', xy=(-2.3, 1.5), horizontalalignment='center', verticalalignment='center', fontsize=12)
    axs[8].annotate('0 or 1', xy=(0, 1.5), horizontalalignment='center', verticalalignment='center', fontsize=12)
    axs[9].annotate('DB0', xy=(-2.3, 1.5), horizontalalignment='center', verticalalignment='center', fontsize=12)
    axs[9].annotate('0 or 1', xy=(0, 1.5), horizontalalignment='center', verticalalignment='center', fontsize=12)


    plt.xlabel('Time (μs)')

    # Set y-ticks
    plt.yticks([0, 3.3], ['0 V', '3.3 V'])

    # Hide x labels and tick labels for all but bottom plot.
    for ax in axs:
        ax.label_outer()

    # Display the plot
    plt.show()

   
# Specify the path to CSV file
DB7_path = 'DB7.csv'
DB6_path = 'DB6.csv'
DB5_path = 'DB5.csv'
DB4_path = 'DB4.csv'
DB3_path = 'DB3.csv'
DB2_path = 'DB2.csv'
DB1_path = 'DB1.csv'
DB0_path = 'DB0.csv'

# Read CSV data
DB7_data = read_csv(DB7_path)
DB6_data = read_csv(DB6_path)
DB5_data = read_csv(DB5_path)
DB4_data = read_csv(DB4_path)
DB3_data = read_csv(DB3_path)
DB2_data = read_csv(DB2_path)
DB1_data = read_csv(DB1_path)
DB0_data = read_csv(DB0_path)

# Plot the data
plot_csv(DB7_data, DB6_data, DB5_data, DB4_data, DB3_data, DB2_data, DB1_data, DB0_data)