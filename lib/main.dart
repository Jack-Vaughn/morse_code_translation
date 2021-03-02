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
import 'package:morse_code_translation/MainDrawer.dart';
import 'package:morse_code_translation/config.dart';

import 'LegendButton.dart';

final appTitle = 'Morse Code Translator';

void main() => runApp(MainApp());

class MainApp extends StatefulWidget {
  @override
  _MainAppState createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  void initState() {
    super.initState();
    theme.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme.getTheme(),
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            actions: [
              LegendButton(),
            ],
            bottom: TabBar(
              tabs: [
                Tab(text: 'Text to Morse'),
                Tab(text: 'Morse to Text'),
              ],
            ),
            title: Text(appTitle),
          ),
          drawer: MainDrawer(),
          body: TabBarView(
            children: [
              TextToMorseTab(),
              MorseToTextTab(),
            ],
          ),
        ),
      ),
    );
  }
}
