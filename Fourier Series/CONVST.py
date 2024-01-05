import numpy as np
import matplotlib.pyplot as plt

# Define parameters
n_terms = 70
amplitude = 1.71
T = 1000 * 1e-9  # 1000 ns
fundamental_frequency = 1 * 1e6

# Time values
t = np.linspace(0, 1 * T, 10000)

# Initialize the y values with the DC component
y = np.full_like(t, amplitude)

# Calculate and add Fourier series terms
for n in range(1, n_terms + 1):
    y += (1.8 * (np.sin(0.02 * n * np.pi) - np.sin(0.12 * n * np.pi)) / (n * np.pi)) * np.cos(n * 2 * np.pi * t / T) / np.sqrt(1+np.square(n/350)) + \
         (1.8 * (np.cos(0.12 * n * np.pi) - np.cos(0.02 * n * np.pi)) / (n * np.pi)) * np.sin(n * 2 * np.pi * t / T) / np.sqrt(1+np.square(n/350)) # np.sqrt(1+np.square(n/350)) stems from oscilloscope

# Print the fundamental frequency
if fundamental_frequency >= 1e9:
    print(f"Fundamental Frequency: {fundamental_frequency/1e9} GHz")
    plt.text(0.95, 0.5, f"Fundamental Frequency: {fundamental_frequency/1e9:.2f} GHz", transform=plt.gca().transAxes,
             horizontalalignment='right', verticalalignment='center')
elif fundamental_frequency >= 1e6:
    print(f"Fundamental Frequency: {fundamental_frequency/1e6} MHz")
    plt.text(0.95, 0.5, f"Fundamental Frequency: {fundamental_frequency/1e6:.2f} MHz\n" f"Maximum Frequency: {(n_terms * fundamental_frequency/1e6):.2f} MHz", transform=plt.gca().transAxes,
             horizontalalignment='right', verticalalignment='center')
elif fundamental_frequency >= 1e3:
    print(f"Fundamental Frequency: {fundamental_frequency/1e3} kHz")
    plt.text(0.95, 0.5, f"Fundamental Frequency: {fundamental_frequency/1e3:.2f} kHz" , transform=plt.gca().transAxes,
             horizontalalignment='right', verticalalignment='center')
else:
    print(f"Fundamental Frequency: {fundamental_frequency} Hz")
    plt.text(0.95, 0.5, f"Fundamental Frequency: {fundamental_frequency:.2f} Hz", transform=plt.gca().transAxes,
             horizontalalignment='right', verticalalignment='center')

# Calculate and print the maximum frequency
max_frequency = n_terms * fundamental_frequency
if max_frequency >= 1e9:
    print(f"Maximum Frequency: {max_frequency/1e9} GHz")
elif max_frequency >= 1e6:
    print(f"Maximum Frequency: {max_frequency/1e6} MHz")
elif max_frequency >= 1e3:
    print(f"Maximum Frequency: {max_frequency/1e3} kHz")
else:
    print(f"Maximum Frequency: {max_frequency} Hz")

# Plot the result
plt.plot(t * 1e9, y)
plt.xlabel('Time (ns)')
plt.ylabel('Voltage (V)')
plt.title(f'Fourier Series with {n_terms} n terms')
# plt.grid(True, axis='x')  # Remove y-grid, keep x-grid
plt.grid(False)
plt.xlim(0,100)
plt.show()