// OFFICIAL PACKAGE IMPORTS
import 'package:flutter/material.dart';

// THIRD PARTY IMPORTS

// PERSONAL IMPORTS
import 'package:morse_code_translation/ConversionTab.dart';

final appTitle = 'Morse Code Translator';

void main() => runApp(MaterialApp(
      theme: ThemeData.dark(),
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
              ConversionTab(isConvertToMorse: true),
              ConversionTab(isConvertToMorse: false),
            ],
          ),
        ),
      ),
    ));
