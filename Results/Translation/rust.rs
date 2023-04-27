use std::fs::File;
use std::io::BufReader;
use std::io::prelude::*;
use std::error::Error;
use std::str::FromStr;

// default patient. adult average parameters taken from the PADOVA paper page 31
struct PatientInfo {
    weight: f32,
    daily_insulin: f32,
    carbohydrate_ratio: f32,
    correction_factor: f32,
    target_glucose: f32
}

impl PatientInfo {
    fn new() -> PatientInfo {
        let weight = 69.7;
        let daily_insulin = 0.61;
        let carbohydrate_ratio = 15.9;
        let correction_factor = 1700.0 / daily_insulin;
        let target_glucose = 119.6;

        PatientInfo {
            weight,
            daily_insulin,
            carbohydrate_ratio,
            correction_factor,
            target_glucose
        }
    }
}

// open csv file
fn read_csv_file(filename: &str) -> Result<Vec<(f32, f32)>, Box<dyn Error>> {
    let mut data = Vec::new();
    let file = File::open(filename)?;
    let mut reader = csv::ReaderBuilder::new()
        .has_headers(false)
        .from_reader(BufReader::new(file));
    for result in reader.records() {
        let record = result?;
        let meal_size = f32::from_str(&record[0])?;
        let smbg = f32::from_str(&record[1])?;
        if meal_size != 0.0 && smbg != 0.0 {
            data.push((meal_size, smbg));
        }
    }
    Ok(data)
}

// insulin to glucose calculator
fn get_insulin(carbohydrate: f32, current_glucose: f32, patient: &PatientInfo) -> (f32, i32) {
    // if glucose is outside of threshold, true alarm
    if current_glucose > 180.0 || current_glucose < 70.0 {
        let true_alarm = 1;
        let bolus = (carbohydrate / patient.carbohydrate_ratio) + (current_glucose - patient.target_glucose) / patient.correction_factor;
        (bolus, true_alarm)
    }
    // else if within threshold, corrupt a reading every 20 iterations
    else {
        let true_alarm = 0;
        let bolus = (carbohydrate / patient.carbohydrate_ratio) + (current_glucose - patient.target_glucose) / patient.correction_factor;
        (bolus, true_alarm)
    }
}

// flips a bit in the insulin calculated
fn bit_flipping(float_num: f32) -> f32 {
    let binary = float_num.to_bits();
    let binary_xor = binary ^ 64;
    let float_xor = f32::from_bits(binary_xor);
    float_xor
}

fn main() -> Result<(), Box<dyn Error>> {
    // init patient object with values
    let patient = PatientInfo::new();
    // read csv file
    let data = read_csv_file("Patients/Patient10.csv")?;
    let mut data_flt = Vec::new();
    for row in data {
        data_flt.push(row);
    }
    Ok(())
}
