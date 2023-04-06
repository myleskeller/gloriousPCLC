import csv
import logging as log
import websocket
import _thread
import time
import rel
from optparse import OptionParser

"""
The simulator puts in relation glucose and insulin, and their respective fluxes.

Simulation variables:
-------------------------------------------------------------------------------------
G = glucose
    EGP = endrogenous glucose production (linearly dependent on plasma glucose)
    Ra = glucose rate of appearance ()
    U = glucose utilization
    E = renal extraction

Notes: 
    The glucose subsystem consists of 2 compartments:
        1. Insulin independent utilization: plasma and rapidly equilibrating tissues
        2. Insulin dependent utilization: slowly equilibrating tissues

------------------------------------------------------------------------------------

I = insulin
    SC = rate of insulin appearance from the subcutaneous tissue
    D = insulin degradation

Notes:
    The insulin subsystem is also described in 2 compartments:
        1. Liver
        2. Plasma (no description in paper)

------------------------------------------------------------------------------------
"""

# global variable to iterate through float list
j = 0

# default patient. adult average parameters taken from the PADOVA paper page 31
class PatientInfo:
    weight = 69.7                           # kg
    daily_insulin = 0.61                    # U/day/kg
    carbohydrate_ratio = 15.9               # g/U
    correction_factor = 1700/daily_insulin
    target_glucose = 119.6                  # mg/dl

def main():
    # init patient object with values
    lolo = PatientInfo()

    # open csv file
    filename = open("gluread.csv", "r")                          

    # empty list
    glucose_str = []                                    
    glucose_flt = []
    glucose_time_str = []
    glucose_time_flt = []

    # GLUCOSE LIST FROM CSV
    for col in csv.DictReader(filename):
        glucose_str.append(col["glucose"])

    # GLUCOSE LIST IN FLOAT VALUES
    for i in glucose_str:
        glucose_flt.append(float(i))

    # TIME OF EACH GLUCOSE READING
    for i in glucose_time_str:
        glucose_time_str.append(col["time"])

    # TIME LIST IN FLOAT VALUES
    for i in glucose_time_str:
        glucose_time_flt.append(float(i))
    
    while True:
        # run forever inside websocket  function
        insulin = get_insulin(glucose_flt[j])
        j = j + 1
    
# get equations from uva padova
def get_insulin(glucose, carbohydrate,time, patient):

    """
    Variables from PADOVA and Simglucose
    
    Bolus insulin is based on the current glucose, target glucose ,
    patient correction factor, and carb ratio.

    current glucose = from dataset
    target glucose = 120mg/dl
    patient correction factor = 1700/total daily insulin
    carb ratio = ingested carb / optimal bolus?

    bolus = ((carbohydrate / carbohydrate_ratio) + (current_glucose - target_glucose) / correction_factor) / sample_time
    
    @TODO: 
        - the dataset doesnt have carbs. find whether paper includes info related to carb consumption
        - calculate sample time based on column b. make another list and compounded time
    """
    
    bolus = ((carbohydrate / carbohydrate_ratio) + (current_glucose - target_glucose) / correction_factor) / sample_time

    return bolus 

if __name__ == "__main__":
    main()
