const csv = require('csv-parser');
const fs = require('fs');
const struct = require('python-struct');

// default patient. adult average parameters taken from the PADOVA paper page 31
class PatientInfo {
constructor() {
this.weight = 69.7; // kg
this.daily_insulin = 0.61; // U/day/kg
this.carbohydrate_ratio = 15.9; // g/U
this.correction_factor = 1700 / this.daily_insulin;
this.target_glucose = 119.6; // mg/dl
}
}

// init patient object with values
let k = 0;
let patient = new PatientInfo();

// open csv file
let data_str = [];
let data_flt = [];

fs.createReadStream('Patients/Patient10.csv')
.pipe(csv())
.on('data', (row) => {
data_str.push([row.MealSize, row.SMBG]);
})
.on('end', () => {
//convert data to float, ignore when glucose is 0
for (let i = 0; i < data_str.length; i++) {
let row = data_str[i];
if (row[0] !== "" && row[1] !== "") {
data_flt.push([parseFloat(row[0]), parseFloat(row[1])]);
}
}
});

//! insulin to glucose calculator !//
function get_insulin(carbohydrate, current_glucose, patient) {
let true_alarm, bolus;
// if glucose is outside of theshold, true alarm
if (current_glucose > 180 || current_glucose < 70) {
true_alarm = 1;
bolus = ((carbohydrate / patient.carbohydrate_ratio) + (current_glucose - patient.target_glucose) / patient.correction_factor);
// else if within theshold, corrupt a reading every 20 iterations
} else {
true_alarm = 0;
bolus = ((carbohydrate / patient.carbohydrate_ratio) + (current_glucose - patient.target_glucose) / patient.correction_factor);
}

kotlin

return [bolus, true_alarm];

}

//! flips a bit in the insulin calculated !//
function bit_flipping(float_num) {
let binary = struct.pack('!f', float_num);

csharp

// Perform a bitwise AND operation with 64
let binary_int = BigInt('0x' + Buffer.from(binary).toString('hex'));
binary_int &= 64n;
let binary_xor = Buffer.from(binary_int.toString(16).padStart(8, '0'), 'hex');

// Convert the binary back to a float
let float_xor = struct.unpack('!f', binary_xor)[0];
return float_xor;

}