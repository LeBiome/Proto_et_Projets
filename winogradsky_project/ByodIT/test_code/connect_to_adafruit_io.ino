// This is largely taken from Adafruit is tutorial
// It is almost entirely boilerplate
// but what this code does is

// connect to your WiFi network
// connect to Adafruit via WiFi
// read data from your soil sensor
// upload sensor data to Adafruit

// You will need to change the following variables in the code:

// WLAN_SSID  this is the name of your WiFi network
// WLAN_PASS  this is the password to your WiFi network
// AIO_USERNAME  this is your adafruit.io username
// AIO_KEY  this is your adafruit.io key
// dryVal  from your previous code
// wetVal  from your previous code

// Play with IFTTT described at the end of code

}

int readHumidity() {
  int sensorVal = analogRead(inputPin);
  return (int)(100*(dryVal-sensorVal)/(dryVal-wetVal));
}

// connect to adafruit io via MQTT
void connect() {

  Serial.print(F("Connecting to Adafruit IO... "));

  int8_t ret;

  while ((ret = mqtt.connect()) != 0) {

    switch (ret) {
      case 1: Serial.println(F("Wrong protocol")); break;
      case 2: Serial.println(F("ID rejected")); break;
      case 3: Serial.println(F("Server unavail")); break;
      case 4: Serial.println(F("Bad user/pass")); break;
      case 5: Serial.println(F("Not authed")); break;
      case 6: Serial.println(F("Failed to subscribe")); break;
      default: Serial.println(F("Connection failed")); break;
    }

    if(ret >= 0)
      mqtt.disconnect();

    Serial.println(F("Retrying connection..."));
    delay(5000);

  }

  Serial.println(F("Adafruit IO Connected!"));

}

// IFTTT (If This, Then That) is a wonderful, free service that lets you connect things together. And Adafruit.io has IFTTT integration! We're going to create an IFTTT applet: if our humidity feed on Adafruit.io is <5, then send a text message.

// If you don't already have an IFTTT account, create one: https://ifttt.com/

// Then, create a new "applet." Click on the "this", search for Adafruit, and then select "Monitor a feed on Adafruit IO".

// For the "that" portion, you can either set up notifications via the IFTTT application, or text messages, or email, or...you get the idea. Give it a try!
