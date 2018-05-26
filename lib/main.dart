import 'package:flutter/material.dart';
import 'package:weatherapp/screens/account.dart';
import 'package:weatherapp/screens/settings.dart';
import 'package:weatherapp/screens/home.dart';


void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    home: new HomeScreen(),
    routes: <String, WidgetBuilder>{
      SettingsScreen.routeName: (BuildContext context) => new SettingsScreen(),
      AccountScreen.routeName: (BuildContext context) => new AccountScreen(),
    },
  ));
}