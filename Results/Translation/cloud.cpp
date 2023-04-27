#include <iostream>
#include <fstream>
#include <vector>
#include <cstring>
#include <string>
#include <cmath>
#include <iomanip>
#include <bitset>

using namespace std;

// default patient. adult average parameters taken from the PADOVA paper page 31
class PatientInfo {
    public:
        float weight = 69.7;                         // kg
        float daily_insulin = 0.61;                  // U/day/kg
        float carbohydrate_ratio = 15.9;             // g/U
        float correction_factor = 1700/daily_insulin;
        float target_glucose = 119.6;                // mg/dl
};

// init patient object with values
int k = 0;
PatientInfo patient;

// open csv file
ifstream filename("Patients/Patient10.csv");                           

vector<pair<float, float>> data_str;
vector<pair<float, float>> data_flt;

// get mealzie and glucose into a vector of tupples {meal, glucose}
void get_data() {
    string line;
    getline(filename, line); // skip the header
    while (getline(filename, line)) {
        char* ptr = strtok((char*)line.c_str(), ",");
        float meal = atof(ptr);
        ptr = strtok(NULL, ",");
        float glucose = atof(ptr);
        if (meal != 0 && glucose != 0) {
            data_str.push_back(make_pair(meal, glucose));
        }
    }
}

// convert data to float, ignore when glucose is 0
void convert_data() {
    for (pair<float, float> row : data_str) {
        data_flt.push_back(make_pair(stof(to_string(row.first)), stof(to_string(row.second))));
    }
}

//! insulin to glucose calculator !//
pair<float, int> get_insulin(float carbohydrate, float current_glucose, PatientInfo patient) {

    // if glucose is outside of theshold, true alarm
    int true_alarm = 0;
    float bolus = ((carbohydrate / patient.carbohydrate_ratio) + (current_glucose - patient.target_glucose) / patient.correction_factor);
    if (current_glucose > 180 || current_glucose < 70) {
        true_alarm = 1;
    }
    // else if within theshold, corrupt a reading every 20 iterations
    else if (k % 20 == 0) {
        bolus = bit_flipping(bolus);
    }

    return make_pair(bolus, true_alarm);
}

//! flips a bit in the insulin calculated !//
float bit_flipping(float float_num) {
    bitset<32> bits(reinterpret_cast<unsigned int&>(float_num));
    bits.flip(3);
    float flipped = 0.0;
    memcpy(&flipped, &bits, sizeof(float));
    return flipped;
}

int main() {

    get_data();
    convert_data();

    // get insulin for each meal and glucose level
    for (pair<float, float> row : data_flt) {
        k++;
        pair<float, int> insulin = get_insulin(row.first, row.second, patient);
        cout << fixed << setprecision(2) << insulin.first << "," << insulin.second << endl;
    }

    return 0;
} 