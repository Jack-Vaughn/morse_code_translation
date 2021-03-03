// TextToMorseTab.dart
// 01 March 2021
// Morse Code Translator
// CMSC 495 - 6381
// UMGC
// https://github.com/Jack-Vaughn/morse_code_translation
//
// Authors: Robert Rye, Michael Terry, Jack Vaughn, Adam Cunningham
// License: 0BSD
// Version 0.1
// Status: Development

import 'dart:async';
import 'package:flashlight/flashlight.dart';

class MorseLight {
  static int multiplier =
      500; // MULTIPLIER * MILLISECONDS, 1000 WOULD BE 1 SECOND

  static void flash(String morse) async {
    List<int> times = generateList(morse);

    for (int time in times) {
      if (time > 0) {
        Flashlight.lightOn();
        print('light on');
        await Future.delayed(Duration(milliseconds: time), () {});
      }
      Flashlight.lightOff();
      print('light off');
      await Future.delayed(Duration(milliseconds: multiplier), () {});
    }
  }

  static List<int> generateList(String morse) {
    List<int> times = List();

    morse.split('').forEach((c) {
      if (c == '.') {
        times.add(1 * multiplier);
      } else if (c == '-') {
        times.add(3 * multiplier);
      } else if (c == '-') {
        for (int i = 0; i < 6; i++) {
          times.add(0);
        }
      }
    });
    return times;
  }
}
