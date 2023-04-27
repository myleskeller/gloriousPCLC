import local
import cloud
import random
import numpy as np
import matplotlib.pyplot as plt

# declare tupple of {bolus, true_alarm_bool} for each client
cloud_response = [] 
local_response = []
false_alarm = []
true_alarm_glucose = []
true_count = 0
false_count_zero = 0

# collect responses for all glucose readings in file.
for i in range(200):
    #responses are lists of {insulin, alarm} tupples
    local_response.append(local.get_insulin(local.data_flt[i][0], local.data_flt[i][1], local.patient))
    cloud_response.append(cloud.get_insulin(cloud.data_flt[i][0], cloud.data_flt[i][1], cloud.patient))
    
""" ACCIDENTAL ISSUE: RANDOM 0 """

# CHECK TRUE GLUCOSE ALARMS. SAME FOR LOCAL AND CLOUD
for i in range(len(local_response)):
    if local_response[i][1] == 1:
        true_alarm_glucose.append(local_response[i][1])
        true_count = true_count + 1

# GENERATE FALSE ZERO ALARMS FOR LOCAL. 10 to 15% of true alarms at each patient
# mf = (11 / 100) * true_count
# mf = int(mf)
# mf_count = 0
# print(mf)
# 
# for i in range(0, mf):
#     rand = random.randrange(10, 190)
#     local_response[rand] = (0, local_response[rand][1])
#     false_alarm.append(local_response[rand])
#     false_count_zero = false_count_zero + 1

# print("true: ", true_count)
# print("false: ", false_count_zero)
# print("total: ", true_count + false_count_zero)

""" ACCIDENTAL ISSUE: BIT FLIPPED """

mf = (15 / 100) * true_count
mf = int(mf)
mf_count = 0
print(mf)

# make some local insulin flip bits
for i in range(0, mf):
    rand = random.randrange(10, 190)    
    local_response[rand] = (local.bit_flipping(local_response[rand][0]), local_response[rand][1])
    false_alarm.append(local_response[rand])
    false_count_zero = false_count_zero + 1


print("true: ", true_count)
print("false: ", false_count_zero)
print("total: ", true_count + false_count_zero)