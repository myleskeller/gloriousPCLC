import local
import cloud
import matplotlib.pyplot as plt

# declare tupple of {bolus, true_alarm_bool} for each client
cloud_response = [] 
local_response = []
false_alarm = []
true_alarm_glucose = []
true_alarm_insulin = []

# collect responses for all glucose readings in file.
for i in range(200):
    #responses are lists of {insulin, alarm} tupples
    local_response.append(local.get_insulin(local.data_flt[i][0], local.data_flt[i][1], local.patient))
    cloud_response.append(cloud.get_insulin(cloud.data_flt[i][0], cloud.data_flt[i][1], cloud.patient))
    
""" ACCIDENTAL ISSUE: RANDOM 0 """

# # make some local insulin values 0
# for i in range(len(local_response)):
#     if i % 20 == 0:
#         local_response[i] = (0, local_response[i][1])

# #plot true alarm when glucose is outside of range
# for i in range(len(local_response)):
#     if local_response[i][1] == 1:
#         true_alarm_glucose.append(local_response[i][1])

# plt.title("True Alarm: Hypoglycemia or Hyperglycemia")
# plt.plot(true_alarm_glucose, "go")
# plt.ylabel("Bolus")
# plt.xlabel("Glucose Sample")
# plt.show()

# #plot true alarm when insulin sent is 0 from both cloud and local
# for i in range(len(local_response)):
#     if local_response[i][0] > 1 and cloud_response[i][0] > 1:
#         true_alarm_insulin.append(local_response[i][0])

# plt.title("True Alarm: No Insulin Required")
# plt.plot(true_alarm_insulin, "go")
# plt.ylabel("Bolus")
# plt.xlabel("Glucose Sample")
# plt.show()

# #plot false alarm when insulin from local is 0 but cloud isnt 0
# for i in range(len(local_response)):
#     if local_response[i][0] == 0 and cloud_response[i][0] != 0:
#         false_alarm.append(local_response[i][0])

# plt.title("False Alarm: DOS on Local Controller")
# plt.plot(false_alarm, "ro")
# plt.ylabel("Bolus")
# plt.xlabel("Glucose Sample")
# plt.show()

""" ACCIDENTAL ISSUE: BIT FLIPPED """

print("CLEAN RESPONSE \n", local_response)

# make some local insulin flip bits
for i in range(len(local_response)):
    if i % 20 == 0:
        local_response[i] = (local.bit_flipping(local_response[i][0]), local_response[i][1])

print
print("ALTERED RESPONSE \n", local_response)

#plot true alarm when glucose is outside of range
for i in range(len(local_response)):
    if local_response[i][1] == 1:
        true_alarm_glucose.append(local_response[i][1])

