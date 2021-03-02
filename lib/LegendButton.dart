// MorseToTextTab.dart
// 16 February 2021
// Morse Code Translator
// CMSC 495 - 6381
// UMGC
// https://github.com/Jack-Vaughn/morse_code_translation
//
// Authors: Robert Rye, Michael Terry, Jack Vaughn, Adam Cunningham
// License: 0BSD
// Version 0.1
// Status: Development

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LegendButton extends StatefulWidget {
  @override
  _DeckViewState createState() => _DeckViewState();
}

class _DeckViewState extends State<LegendButton> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              insetPadding: EdgeInsets.all(10),
              content: new SvgPicture.asset(
                'assets/images/legend.svg',
                height: 100.0,
                width: 100.0,
                color: Theme.of(context).primaryColor,
              ),
            );
          },
        );
      },
      icon: Icon(Icons.info),
    );
  }
}
