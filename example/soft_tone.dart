library test.hardware.soft_tone;

import 'dart:async';

import 'package:rpi_gpio/rpi_gpio.dart';
import 'package:rpi_gpio/rpi_hardware.dart';

const scale = const [262, 294, 330, 349, 392, 440, 494, 525];

main() async {
  Gpio.hardware = new RpiHardware();

  var gpio = Gpio.instance;
  var pin = gpio.pin(1, output);

  pin.startSoftTone();

  while (true) {
    for (var freq in scale) {
      print("Frequency: ${freq}");
      pin.writeSoftTone(freq);
      await _delay(500);
    }
  }

  pin.stopSoftTone();
}

Future _delay(int milliseconds) async {
  await new Future.delayed(new Duration(milliseconds: milliseconds));
}
