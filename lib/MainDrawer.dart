import 'package:flutter/material.dart';
import 'package:morse_code_translation/config.dart';

class MainDrawer extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<MainDrawer> {
  bool isSwitched = theme.getTheme() == ThemeData.dark();

  Color hexColor(String hex) {
    hex = hex.toUpperCase().replaceAll('#', '');

    if (hex.length == 6) {
      hex = 'FF' + hex;
    }
    return Color(int.parse(hex, radix: 16));
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            child: Text('Morse Code Translator'),
          ),
          Row(
            children: <Widget>[
              Padding(padding: EdgeInsets.fromLTRB(17, 0, 0, 0)),
              Text('Dark Mode'),
              Padding(padding: EdgeInsets.fromLTRB(150, 0, 0, 0)),
              Switch(
                value: isSwitched,
                onChanged: (value) {
                  setState(() {
                    isSwitched = value;
                    theme
                        .setTheme(value ? ThemeData.dark() : ThemeData.light());
                  });
                },
                activeTrackColor: Colors.lightBlue,
                activeColor: Colors.lightBlueAccent,
              ),
            ],
          ),
          ListTile(
            title: Text('Ruby'),
            onTap: () {
              isSwitched = false;
              theme.setTheme(
                ThemeData(
                  primaryColor: hexColor("d90429"),
                  accentColor: hexColor("ef233c"),
                  canvasColor: hexColor("edf2f4"),
                  buttonTheme: ButtonThemeData(
                    buttonColor: hexColor("2b2d42"),
                    textTheme: ButtonTextTheme.primary,
                  ),
                ),
              );
            },
          ),
          ListTile(
            title: Text('Creamsicle'),
            onTap: () {
              isSwitched = false;
              theme.setTheme(
                ThemeData(
                  primaryColor: hexColor("f3752b"),
                  accentColor: hexColor("f79d5c"),
                  canvasColor: hexColor("ededf4"),
                  buttonTheme: ButtonThemeData(
                    buttonColor: hexColor("564138"),
                    textTheme: ButtonTextTheme.primary,
                  ),
                ),
              );
            },
          ),
          ListTile(
            title: Text('Toothpaste'),
            onTap: () {
              isSwitched = false;
              theme.setTheme(
                ThemeData(
                  primaryColor: hexColor("#A6ECE0"),
                  accentColor: hexColor("#4C8577"),
                  canvasColor: hexColor("#F8F3F2"),
                  buttonTheme: ButtonThemeData(
                    buttonColor: hexColor("#7ADFBB"),
                    textTheme: ButtonTextTheme.primary,
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
