import 'package:flutter/material.dart';

class AccountScreen extends StatelessWidget {
  static const String routeName = "/account";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
          title: new Text("Account"),
      ),
      body: new Container(
        child: new Center(
          child: new Text("Account Screeb"),
        ),
      ),

    );
  }


}

