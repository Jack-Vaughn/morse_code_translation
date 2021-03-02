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
import 'package:morse/morse.dart';
import 'package:morse_code_translation/MorseLight.dart';

class TextToMorseTab extends StatefulWidget {
  @override
  _DeckViewState createState() => _DeckViewState();
}

class _DeckViewState extends State<TextToMorseTab> {
  // DECLARE VARIABLES HERE
  final txtInputControl = TextEditingController();
  final txtOutputControl = TextEditingController();
  final Morse morse = new Morse();
  bool submitted = false;

  clearTextInput() {
    setState(() {
      submitted = false;
    });
    txtInputControl.clear();
    txtOutputControl.clear();
  } //end clearTextInput

  void translate() {
    setState(() {
      submitted = true;
    });
    txtOutputControl.text = morse.encode(txtInputControl.text);
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
                  readOnly: true,
                  minLines: 4,
                  maxLines: 4,
                  controller: txtOutputControl,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Output',
                      contentPadding: const EdgeInsets.all(20.0),
                      suffixIcon: IconButton(
                        icon : Icon(Icons.copy),
                        padding: EdgeInsets.fromLTRB(0, 180, 0, 12),
                        onPressed: () => {

                        },
                      )
                  ),
                  style: new TextStyle(
                      fontSize: 34.0,
                      color: const Color(0xFF808080),
                      fontWeight: FontWeight.w200,
                      fontFamily: "Roboto"),
                ),
                SizedBox(height: 15),
                TextField(
                  minLines: 4,
                  maxLines: 4,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Input',
                    contentPadding: const EdgeInsets.all(20.0),
                  ),
                  controller: txtInputControl,
                  style: new TextStyle(
                      fontSize: 34.0,
                      color: const Color(0xFF808080),
                      fontWeight: FontWeight.w200,
                      fontFamily: "Roboto"),
                ),
                ButtonBar(
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.lightbulb),
                      onPressed: !submitted
                          ? null
                          : () => {MorseLight.flash(txtInputControl.text)},
                    ),
                    RaisedButton(
                      child: Text("Submit"),
                      onPressed: () => {translate()},
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
