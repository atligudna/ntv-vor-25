import 'dart:io';

void main () {
  bool myLightSwitch = true;
  while (true){
    myLightSwitch = turnOnOrOff(myLightSwitch);
    String onOrOff = "";
    displayLightBulbStatus(myLightSwitch);
    print("Should we check again?");
    stdin.readLineSync();
  }

}
  /* Þetta þarf ekki, mætti vera function neðst"
  if (myLightSwitch == true) {
    onOrOff = "On!";
  } else {
    onOrOff = "Off!";
  }print(onOrOff);
    */



bool turnOnOrOff(bool lightSwitch) {
  return !lightSwitch;
  /* bool result;
  if (lightSwitch == true) {
    result = false;
  } else {
    result = true;
  }
  return result;

   */
}

void displayLightBulbStatus (bool lightSwitch) {
  /*
  if (lightSwitch == true) {
    print ("The light is On");
  } else {
    print ("The light is off");
  }

   */
  print("The light is ");
  print(lightSwitch ? "On" : "Off");
}