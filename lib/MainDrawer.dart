import 'package:flutter/material.dart';
import 'package:morse_code_translation/config.dart';

class MainDrawer extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<MainDrawer> {
  bool isSwitched = theme.getTheme() == ThemeData.dark();

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
                activeTrackColor: Colors.deepOrange,
                activeColor: Colors.deepOrangeAccent,
              ),
            ],
          ),
          ListTile(
            title: Text('Ruby Red'),
            onTap: () {
              isSwitched = false;
              theme.setTheme(
                ThemeData(
                  primaryColor: Colors.red,
                  accentColor: Colors.redAccent,
                  buttonTheme: ButtonThemeData(
                    buttonColor: Colors.red,
                    textTheme: ButtonTextTheme.primary,
                  ),
                ),
              );
            },
          ),
          ListTile(
            title: Text('Leaf Green'),
            onTap: () {
              isSwitched = false;
              theme.setTheme(
                ThemeData(
                  primaryColor: Colors.green,
                  accentColor: Colors.greenAccent,
                  buttonTheme: ButtonThemeData(
                    buttonColor: Colors.green,
                    textTheme: ButtonTextTheme.primary,
                  ),
                ),
              );
            },
          ),
          ListTile(
            title: Text('Soul Silver'),
            onTap: () {
              isSwitched = false;
              theme.setTheme(
                ThemeData(
                  primaryColor: Colors.grey,
                  accentColor: Colors.blueGrey,
                  canvasColor: Colors.grey[850],
                  textSelectionColor: Colors.white,
                  textTheme: TextTheme(
                    bodyText1: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  buttonTheme: ButtonThemeData(
                    buttonColor: Colors.black26,
                    textTheme: ButtonTextTheme.primary,
                  ),
                ),
              );
            },
          ),
          ListTile(
            title: Text('Heart Gold'),
            onTap: () {
              isSwitched = false;
              theme.setTheme(
                ThemeData(
                  primaryColor: Colors.yellowAccent,
                  accentColor: Colors.yellow,
                  canvasColor: Colors.amber[800],
                  buttonTheme: ButtonThemeData(
                    buttonColor: Colors.redAccent,
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
