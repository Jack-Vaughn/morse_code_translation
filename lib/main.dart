// main.dart
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

// OFFICIAL PACKAGE IMPORTS
import 'package:flutter/material.dart';

// THIRD PARTY IMPORTS

// PERSONAL IMPORTS
import 'package:morse_code_translation/MorseToTextTab.dart';
import 'package:morse_code_translation/TextToMorseTab.dart';

final appTitle = 'Morse Code Translator';

void main() => runApp(MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(text: 'Text to Morse'),
                Tab(text: 'Morse to Text'),
              ],
            ),
            title: Text(appTitle),
          ),
          body: TabBarView(
            children: [
              TextToMorseTab(),
              MorseToTextTab(),
            ],
          ),
        ),
      ),
    ));
