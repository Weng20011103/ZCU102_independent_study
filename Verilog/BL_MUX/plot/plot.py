import matplotlib.pyplot as plt

# define Matplotlib figure and axis
fig, ax = plt.subplots()
ax.set_aspect('equal')

# BL MUX
ax.text(1.5, 1.5, 'Bitline MUX', fontsize=11, color='black', horizontalalignment='center', verticalalignment='center')
ax.plot([1, 1, 2, 2, 1],[1, 2, 2, 1, 1], color='black')

ax.text(0.45, 1.2, 'A0', fontsize=14, color='blue', horizontalalignment='right', verticalalignment='center')
ax.plot([0.5, 1],[1.2, 1.2], color='blue')

ax.text(0.45, 1.4, 'A1', fontsize=14, color='blue', horizontalalignment='right', verticalalignment='center')
ax.plot([0.5, 1],[1.4, 1.4], color='blue')

ax.text(0.45, 1.6, 'A2', fontsize=14, color='blue', horizontalalignment='right', verticalalignment='center')
ax.plot([0.5, 1],[1.6, 1.6], color='blue')

ax.text(0.45, 1.8, 'EN', fontsize=14, color='blue', horizontalalignment='right', verticalalignment='center')
ax.plot([0.5, 1],[1.8, 1.8], color='blue')

ax.text(1.5, 2.55, 'S1 ~ S8', fontsize=14, color='black', horizontalalignment='center', verticalalignment='bottom')
ax.plot([1.5, 1.5],[2, 2.5], color='black')

ax.plot([1.5, 1.5],[0.5, 1], color='black')

# MOS circuit
ax.text(1.5, 0, 'MOS circuit', fontsize=11, color='black', horizontalalignment='center', verticalalignment='center')
ax.plot([1, 1, 2, 2, 1],[-0.5, 0.5, 0.5, -0.5, -0.5], color='black')

ax.plot([1.5, 1.5],[-0.5, -1], color='black')

# gnd
ax.plot([1.35, 1.65],[-1, -1], color='black')
ax.plot([1.415, 1.585],[-1.05, -1.05], color='black')
ax.plot([1.475, 1.525],[-1.1, -1.1], color='black')

ax.plot([2, 2.5],[0.2, 0.2], color='black')
ax.plot([2, 2.5],[-0.2, -0.2], color='black')

# INA
ax.text(2.75, 0, 'INA', fontsize=12, color='black', horizontalalignment='center', verticalalignment='center')
ax.text(3.55, 0, 'OUT', fontsize=14, color='magenta', horizontalalignment='left', verticalalignment='center')
ax.plot([2.5, 2.5, 3.2, 2.5],[-0.35, 0.35, 0, -0.35], color='black')
ax.plot([3.2, 3.5],[0, 0], color='black')

# Turn off the axis
ax.axis('off')

# display plot
plt.show()