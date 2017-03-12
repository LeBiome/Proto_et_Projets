// Test your soil sensor
// upload the following code using the Arduino IDE

int inputPin = A0;
/* The default dry and wet values for the sensor are 520 and 260 (no voltage divider). 
 *  To calibrate your sensor, run this code and open the Serial Monitor.
 *  Record the value being measured as your new "dry" value.
 *  Insert the sensor to the white line in a cup of water. Record the new reading as the "wet" value.
 */
const int dryVal = 567;
const int wetVal = 367;
int sensorVal = 0; //initialize value for sensor readings

void setup() {
  Serial.begin(115200);
}

void loop() {
  sensorVal = analogRead(inputPin);
  
  Serial.print("Sensor Value: ");
  Serial.println(sensorVal);
  
  Serial.print("Relative humidity: ");
  // calculate RH assuming linear relationship between sensor readings and soil moisture level.
  Serial.print(100* (dryVal - sensorVal) / (dryVal - wetVal));
  Serial.println("%");  
  Serial.println();
  
  delay(1000);
}
