import matplotlib.pyplot as plt
import numpy as np

# image file name
fig_filename = "new_RNDV.pdf"

''' Data & Settings '''
''' 
# sbe data
p1 = [53, 63, 53]
p2 = [48, 57, 48]
p3 = [23, 27, 23]
p4 = [39, 46, 39]
p5 = [38, 47, 38]
p6 = [27, 35, 27]
p7 = [36, 41, 36]
p8 = [54, 62, 54]
p9 = [83, 95, 83]
p10 = [49, 56, 49]
'''

# rndv data
p1 = [53, 60, 53]
p2 = [48, 52, 48]
p3 = [23, 25, 23]
p4 = [39, 44, 39]
p5 = [38, 45, 38]
p6 = [27, 31, 27]
p7 = [36, 39, 36]
p8 = [54, 61, 54]
p9 = [83, 94, 83]
p10 = [49, 54, 49]

data = np.array([p1,p2,p3,p4,p5,p6,p7,p8,p9,p10]).transpose()

# data labels
dataset_labels  = list(range(1,data.shape[1]+1))
category_labels = ["TRUE", "TOTAL", "AFTER MITIGATION"]

# bar colors
bar_colors = ['g','r','#1f6cd1']


''' Plot Settings '''
# plot labels
yaxis_label = "Frequency"
xaxis_label = "Patient ID"
plt_title   = "Single Bit Errors (SBE)"

# legend location and num of columns
legend_loc  = 'upper left'         # location of legend
legend_ncol = len(category_labels)  # number of columns

# plot frequency range (min,max) and ticks
plt_range  = (0,100)     # y axis range (min, max)
plt_yticks = 10          # y axis ticks increments

# plot size in inches
fig_width  = 10  # width of the figure in inch
fig_height = 6  # height of the figure in inch

# font size in pt
font_size = 14

# bar size in inches
bar_width = 0.23  # width of the bars in inch

# print data values on top of each bar?
print_val = True




''' Start Plotting '''
# set figure settings
plt.figure(figsize=(fig_width,fig_height), layout='constrained')
plt.rcParams.update({'font.size': font_size})

# get x-axis label locations
x_loc = np.arange(len(dataset_labels))

# plot bars and their attributes
mult = 0
for attribute, val, col in zip(category_labels, data, bar_colors):
    offset = bar_width * mult
    rects = plt.bar(x_loc + offset, val, bar_width, color=col, label=attribute)
    if print_val:
        plt.bar_label(rects, padding=3, fontsize=10)
    mult += 1

# add some text for labels, title and custom x-axis tick labels, etc.
plt.ylabel(yaxis_label, fontsize=15, fontweight='bold')
plt.xlabel(xaxis_label, fontsize=15, fontweight='bold')
# plt.title(plt_title)
# plt.title(plt_title)
plt.xticks(x_loc + bar_width, dataset_labels)
plt.ylim(plt_range[0], plt_range[1])
plt.yticks(range(0,plt_range[1]+plt_yticks,plt_yticks))

plt.legend(loc=legend_loc, ncol=legend_ncol, fontsize=10)

# save and show plot
plt.savefig(fig_filename)
plt.show()