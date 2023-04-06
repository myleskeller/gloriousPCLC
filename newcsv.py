# importing module
from pandas import *
 
# reading CSV file
data = read_csv("gluread.csv")
 
# converting column data to list
month = data['glucose'].tolist()


 
# printing list data
print('Facecream:', month)
