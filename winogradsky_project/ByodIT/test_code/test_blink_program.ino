// The Adafruit Feather HUZZAH is an Arduino-compatible microcontroller with a built-in WiFi chip. 
// It is therefore pretty useful for WiFi-enabled electronics projects. Plug your Feather into your computer, and run the following program. The onboard LED should blink. Try changing the timing of the blinking, too, to ensure that your program is being run correctly.

void setup() {
  pinMode(0, OUTPUT);
}

void loop() {
  Serial.println("Hello world! I'm in a loop!");
  digitalWrite(0, HIGH);
  delay(500);
  digitalWrite(0, LOW);
  delay(500);
}

