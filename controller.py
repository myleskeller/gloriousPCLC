import csv
import sys
import logging as log
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
# default patient. adult average parameters taken from the PADOVA paper page 31
class PatientInfo:
    weight = 69.7                               # kg
    daily_insulin = 0.61                        # U/day/kg
    carbohydrate_ratio = 15.9                   # g/U
    correction_factor = 1700/daily_insulin      # 
    target_glucose = 119.6                      # mg/dl

def main():
    # init patient object with values
    k = 0
    patient = PatientInfo()

    # open csv file
    filename = open("MonitorMeal.csv", "r")                          

    data_str = []
    data_flt = []

    # GLUCOSE LIST FROM CSV INTO STRING LIST
    for row in csv.DictReader(filename):
        data_str.append([row["MealSize"], row["SMBG"]])

    for row in data_str:
        if (row[0] is not "") and (row[1] is not ""):
            data_flt.append([float(row[0]), float(row[1])])

    while True:
        # run forever inside websocket  function
        if k > 5000:
            sys.exit()
        else:
            insulin = get_insulin(data_flt[k][1], data_flt[k][0], patient)        # carb, glucose, patient object
            print(f"Carb:{data_flt[k][1]:6.1f} g;  Glucose:{data_flt[k][0]:6.1f} mg/dl;  Insulin:{insulin:5.2f} U")
            k = k + 1

# INSULIN TO GLUCOSE EQUATION
def get_insulin(current_glucose, carbohydrate, patient):
    """
    Variables from PADOVA and Simglucose
    
    Bolus insulin is based on the current glucose, target glucose ,
    patient correction factor, and carb ratio.

    current glucose = from dataset
    target glucose = 120mg/dl
    patient correction factor = 1700/total daily insulin
    carb ratio = ingested carb / optimal bolus

    bolus = ((carbohydrate / carbohydrate_ratio) + (current_glucose - target_glucose) / correction_factor)
    """
    bolus = ((carbohydrate / patient.carbohydrate_ratio) + (current_glucose - patient.target_glucose) / patient.correction_factor)
    return bolus 

if __name__ == "__main__":
    main()
