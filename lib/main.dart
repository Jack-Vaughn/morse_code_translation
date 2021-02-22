// OFFICIAL PACKAGE IMPORTS

import 'package:flutter/material.dart';

// THIRD PARTY IMPORTS

// PERSONAL IMPORTS
import 'package:morse_code_translation/ConversionTab.dart';
import 'package:morse_code_translation/MainDrawer.dart';
import 'package:morse_code_translation/config.dart';

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
              ConversionTab(isConvertToMorse: true),
              ConversionTab(isConvertToMorse: false),
            ],
          ),
        ),
      ),
    );
  }
}
