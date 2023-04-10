import csv
import sys
import logging as log
import struct
from optparse import OptionParser

# default patient. adult average parameters taken from the PADOVA paper page 31
class PatientInfo:
    weight = 69.7                               # kg
    daily_insulin = 0.61                        # U/day/kg
    carbohydrate_ratio = 15.9                   # g/U
    correction_factor = 1700/daily_insulin      # 
    target_glucose = 119.6                      # mg/dl

# init patient object with values
k = 0
patient = PatientInfo()

# open csv file
filename = open("Patients/Patient2.csv", "r")                          

data_str = []
data_flt = []

# get mealzie and glucose into a list of tupples {meal, glucose}
for row in csv.DictReader(filename):
    data_str.append([row["MealSize"], row["SMBG"]])

#convert data to float, ignore when glucose is 0
for row in data_str:
    if (row[0] != "") and (row[1] != ""):
        data_flt.append([float(row[0]), float(row[1])])


#! insulin to glucose calculator !#
def get_insulin(carbohydrate, current_glucose, patient):

    # if glucose is outside of theshold, true alarm
    if current_glucose > 130 or current_glucose < 80:
        true_alarm = 1
        bolus = ((carbohydrate / patient.carbohydrate_ratio) + (current_glucose - patient.target_glucose) / patient.correction_factor)
    # else if within theshold, corrupt a reading every 20 iterations
    else:
        true_alarm = 0
        bolus = ((carbohydrate / patient.carbohydrate_ratio) + (current_glucose - patient.target_glucose) / patient.correction_factor)

    return bolus, true_alarm

#! flips a bit in the insulin calculated !#
def bit_flipping(float_num):
    binary = struct.pack('!f', float_num)

    # Perform a bitwise AND operation with 64
    binary_int = int.from_bytes(binary, byteorder='big') & 64
    binary_xor = binary_int.to_bytes(4, byteorder='big')

    # Convert the binary back to a float
    float_xor = struct.unpack('!f', binary_xor)[0]
    return float_xor
