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
import 'package:splashscreen/splashscreen.dart';
import 'dart:async';
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

/*
This class is meant to create a splash screen with the project's name and
course number, as well as the school logo and our names
 */
class Splash2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 6,
      navigateAfterSeconds: new _MainAppState(),
      title: new Text('CMSC 495 Project',textScaleFactor: 2,),
      image: new Image.network('https://upload.wikimedia.org/wikipedia/en/0/0d/Umgc-color-seal-500x500_201909301221.png'),
      loadingText: Text("Loading"),
      photoSize: 100.0,
      loaderColor: Colors.blue,
    );
  }// build
}// class Splash2

class _MainAppState extends State<MainApp> {
  @override
  void initState() {
    super.initState();
    theme.addListener(() {
      setState(() {});
    });
  } //initState

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
  } // build
} //_MainAppState
