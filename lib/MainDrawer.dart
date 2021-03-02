import 'package:flutter/material.dart';
import 'package:morse_code_translation/config.dart';

class MainDrawer extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<MainDrawer> {
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
          ListTile(
            title: Text('Default'),
            onTap: () {
              theme.setTheme(ThemeData.light());

            },
          ),
          ListTile(
            title: Text('Midnight'),
            onTap: () {
              theme.setTheme(ThemeData.dark());
            },
          ),
          ListTile(
            title: Text('Ruby'),
            onTap: () {
              theme.setTheme(
                ThemeData(
                  primaryColor: hexColor("D90429"),
                  accentColor: hexColor("2B2D42"),
                  canvasColor: hexColor("EDF2F4"),
                  buttonTheme: ButtonThemeData(
                    buttonColor: hexColor("2B2D42"),
                    textTheme: ButtonTextTheme.primary,
                  ),
                ),
              );
            },
          ),
          ListTile(
            title: Text('Creamsicle'),
            onTap: () {
              theme.setTheme(
                ThemeData(
                  primaryColor: hexColor("#FF9C59"),
                  accentColor: hexColor("#FF580F"),
                  canvasColor: hexColor("#ededf4"),
                  buttonTheme: ButtonThemeData(
                    buttonColor: hexColor("#FF580F"),
                    textTheme: ButtonTextTheme.primary,
                  ),
                ),
              );
            },
          ),
          ListTile(
            title: Text('Toothpaste'),
            onTap: () {
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
          ListTile(
            title: Text('Regal'),
            onTap: () {
              theme.setTheme(
                ThemeData(
                  primaryColor: hexColor("#392F5A"),
                  accentColor: hexColor("#FF8811"),
                  canvasColor: hexColor("#FFF8F0"),
                  buttonTheme: ButtonThemeData(
                    buttonColor: hexColor("#392F5A"),
                    textTheme: ButtonTextTheme.primary,
                  ),
                ),
              );
            },
          ),
          ListTile(
            title: Text('Neon'),
            onTap: () {
              theme.setTheme(
                ThemeData(
                  primaryColor: hexColor("#16F4F4"),
                  accentColor: hexColor("#F607C3"),
                  canvasColor: hexColor("#D3FFFF"),
                  buttonTheme: ButtonThemeData(
                    buttonColor: hexColor("#F607C3"),
                    textTheme: ButtonTextTheme.primary,
                  ),
                ),
              );
            },
          ),
          ListTile(
            title: Text('Gunmetal'),
            onTap: () {
              theme.setTheme(
                ThemeData(
                  primaryColor: hexColor("#343A40"),
                  accentColor: hexColor("#ADB5BD"),
                  canvasColor: hexColor("#F8F9FA"),
                  buttonTheme: ButtonThemeData(
                    buttonColor: hexColor("#212529"),
                    textTheme: ButtonTextTheme.primary,
                  ),
                ),
              );
            },
          ),
          ListTile(
            title: Text('Gold'),
            onTap: () {
              theme.setTheme(
                ThemeData(
                  primaryColor: hexColor("#C39F00"),
                  accentColor: hexColor("#008fc3"),
                  canvasColor: hexColor("#F8F9FA"),
                  buttonTheme: ButtonThemeData(
                    buttonColor: hexColor("#C30048"),
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
