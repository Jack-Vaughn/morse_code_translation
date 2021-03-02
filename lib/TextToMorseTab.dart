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

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:morse/morse.dart';

class TextToMorseTab extends StatefulWidget {
  @override
  _DeckViewState createState() => _DeckViewState();
}

class _DeckViewState extends State<TextToMorseTab> {
  // DECLARE VARIABLES HERE
  final txtField = TextEditingController();
  final Morse morse = new Morse();

  clearTextInput() {
    txtField.clear();
  } //end clearTextInput

  void translate() {
    setState(() {
      txtField.text = morse.encode(txtField.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    // Basic material design visual layout structure
    return Scaffold(
      // Centers content horizontally and vertically
      body: Center(
        child: Container(
          // Offsets in each of the two horizontal directions
          margin: new EdgeInsets.symmetric(horizontal: 20.0),
          child: Center(
            // Displays children in a vertical array
            child: Column(
              // Place the children as close to the middle of the main axis as possible
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Input',
                    contentPadding: const EdgeInsets.all(20.0),
                  ),
                  controller: txtField,
                  style: new TextStyle(
                      fontSize: 34.0,
                      color: const Color(0xFF808080),
                      fontWeight: FontWeight.w200,
                      fontFamily: "Roboto"),
                ),
                ButtonBar(
                  children: <Widget>[
                    RaisedButton(
                      child: Text("Submit"),
                      onPressed: translate,
                      padding: EdgeInsets.all(2.0),
                    ),
                    RaisedButton(
                      child: Text("Clear"),
                      onPressed: () => {clearTextInput()},
                      padding: EdgeInsets.all(2.0),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
