import os
import sys
import csv
import logging as log
import websocket
import _thread
import time
import rel
from optparse import OptionParser

# global variable to iterate through float list
j = 0

class PatientInfo:
    print("info")

def main():
    # init patient object with values

    # open csv file
    filename = open("gluread.csv", "r")                          

    # empty list
    glucose_str = []                                    
    glucose_flt = []

    # move glucose values into a list
    for col in csv.DictReader(filename):
        glucose_str.append(col["glucose"])

    # convert string list into float 
    for i in glucose_str:
        glucose_flt.append(float(i))
    
    # run forever inside websocket  function
    insulin = get_insulin(glucose_flt[j])
    j = j + 1
    
# get equations from uva padova
def get_insulin(glucose):
    calc = glucose + 2.1     
    return calc 

if __name__ == "__main__":
    main()
