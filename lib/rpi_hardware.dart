library rpi_hardware;

import 'dart:isolate';

import 'package:rpi_gpio/rpi_gpio.dart';

import 'dart-ext:rpi_gpio_ext';

/// [RpiHardware] provides synchronous access to the underlying wiringPi
/// library on the Raspberry Pi hardware.
class RpiHardware implements GpioHardware {
  RpiHardware() {
    if (!isRaspberryPi) throw 'only works on Raspberry Pi';
  }

  @override
  int digitalRead(int pinNum) native "digitalRead";

  @override
  void digitalWrite(int pinNum, int value) native "digitalWrite";

  void digitalWriteByte(int value) native "digitalWriteByte";
  void digitalWriteByte2(int value) native "digitalWriteByte2";

  int digitalReadByte() native "digitalReadByte";
  int digitalReadByte2() native "digitalReadByte2";

  int analogRead(int pinNum) native "analogRead";
  void analogWrite(int pinNum, int value) native "analogWrite";

  @override
  void disableAllInterrupts() native "disableAllInterrupts";

  @override
  int enableInterrupt(int pinNum) native "enableInterrupt";

  @override
  void initInterrupts(SendPort port) native "initInterrupts";

  @override
  void pinMode(int pinNum, int mode) native "pinMode";

  @override
  void pullUpDnControl(int pinNum, int pud) native "pullUpDnControl";

  @override
  void pwmWrite(int pinNum, int pulseWidth) native "pwmWrite";

  @override
  void softToneWrite(int pinNum, int frequency) native "softToneWrite";

  @override
  int softToneCreate(int pinNum) native "softToneCreate";

  @override
  void softToneStop(int pinNum) native "softToneStop";
}
