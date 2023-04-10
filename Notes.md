# FAMID: False Alarms Mitigation in IoMT Devices

## Calculator Algorithm

> PADOVA and Simglucose equation for a basic bolus insulin calculator

Simulation variables:

G = glucose
    EGP = endrogenous glucose production (linearly dependent on plasma glucose)
    Ra = glucose rate of appearance ()
    U = glucose utilization
    E = renal extraction

**Notes:**
    The glucose subsystem consists of 2 compartments:
        1. Insulin independent utilization: plasma and rapidly equilibrating tissues
        2. Insulin dependent utilization: slowly equilibrating tissues


I = insulin
    SC = rate of insulin appearance from the subcutaneous tissue
    D = insulin degradation

**Notes:**
    The insulin subsystem is also described in 2 compartments:
        1. Liver
        2. Plasma (no description in paper)

Bolus insulin is based on the current glucose, target glucose, patient correction factor, and carb ratio.

current glucose = taken from dataset
target glucose = 120mg/dl
patient correction factor = 1700/total daily insulin
carb ratio = ingested carb / optimal bolus

bolus = ((carbohydrate / carbohydrate_ratio) + (current_glucose - target_glucose) / correction_factor)

> WHEN AND WHY DOES THE CONTROLLER SEND ALARM????

- When glucose reading is below 80 or above 130. TRUE ALARM
- When there is insulin to be delivered
  - if the local insulin matches the 


## Attack 1: Bit FLipping (intentinal by attacker)

### Definition

- A bit flipped during the calculation of insulin might cause the value to be outside of the acceptance range
  - Acceptance range being +-2U of the cloud algorithm
- The significance is dependant on the bit flipped (MSB-LSB)
  - A change in the LSB will not be significant, anything else is

> FALSE ALARM:
- The local controller has a bit flipped in the insulin amount
- Local controller signals that more insulin than required must be sent
- Local and cloud values are sent to the server
- Server compares values. If local_insulin > cloud_insulin * threshold, false alarm


> TRUE ALARM:
- A true alarm raises when both local and cloud calculate the same amount of insulin to be delivered, and the glucose level is > 80 and < 130

### Implementation

> Local Controller
1. Convert float insulin to binary 
2. Flip a random bit (xor operation i guess)
3. Convert back to float
4. Send to server

> Server
4. Compare local and cloud values
5. If local is not within 2U of cloud, mark as error
6. Plot data. At every response, make pyplot of glucose x insulin. Mark false alarms with red X
7. Save as PDF
8. Repeat for 10 patients (10 csv files)
9. All patients should have the same data range

## Issue 2: Denial of Service (sending random 0s)

### Definition

- The controller might ocasionally generate a value of 0 insulin
- Due to power or communication channel issue
  
> FALSE ALARM:
- The local controller generates an insulin value of 0, but the cloud controller doesnt
- Send local and cloud insulin to server
- If cloud not 0, false alarm

> TRUE ALARM:
- Same as above. But if insulin and glucose are 0 on both cloud and local, true alarm

### Implementation

> Local and Cloud controller
- Store glucose and insulin result in tupple
- Send to the server

> Server
- Compare glucose and insulin from both
- If local_glucose == cloud_glucose && local_insulin == 0 && cloud_insulin > 0, false alarm
- Else, true alarm


**General Plotting:**
- only plot fasle and true alarm
- take same amount of readings from every patient
- bar charts with number of true alarms, false alarms, 

