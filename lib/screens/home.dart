import 'package:flutter/material.dart';
import 'package:weatherapp/screens/account.dart';
import 'package:weatherapp/screens/settings.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatefulWidget {
  @override
  HomeScreenState createState() => new HomeScreenState();
}


class HomeScreenState extends State<HomeScreen> {

  Drawer getNavDrawer(BuildContext context) {
    var headerChild = new DrawerHeader(child: new Text("Header"));
    var aboutChild = new AboutListTile(
      child: new Text("About"),
      applicationName: "",
      applicationVersion: "",
      applicationIcon: new Icon(Icons.adb),
      icon: new Icon(Icons.info),
    );

    ListTile getNavItem(var icon, String s, String routeName) {
        return new ListTile(
          leading: new Icon(icon),
          title: new Text(s),
          onTap: () {
            setState((){
              Navigator.of(context).pop();
              Navigator.of(context).pushNamed(routeName);
            });
          }
        );
    }

    var myNavChildren = [
      headerChild,
      getNavItem(Icons.settings, "Settings", SettingsScreen.routeName),
      getNavItem(Icons.home, "Home", "/"),
      getNavItem(Icons.account_box, "Account", SettingsScreen.routeName),
      aboutChild
    ];

    ListView listView = new ListView(children: myNavChildren);

    return new Drawer(
      child: listView,
    );
  }  //end drawer


  //build navbar items
  BottomNavigationBarItem _buildItem({IconData icon, Text name}) {
    return BottomNavigationBarItem(
      icon: Icon(icon),
      title: name
    );
    
    
  } //end _buildItem

  //now build the widget
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return new Scaffold(
     appBar: new AppBar(
       title: new Text("Weather App"),
     ),
     body: new Container(
        child: new Center(
           //contents in a column
          child: new Column(
            children: <Widget>[
              new ListView(
                shrinkWrap: true,
                padding: const EdgeInsets.all(20.0),
                children: <Widget>[
                  new ListTile(
                    leading: const Icon(Icons.cloud),
                    title: const Text('Miami', style: const TextStyle(fontWeight: FontWeight.bold)),
                  ),
                  new ListTile(
                    leading: const Icon(Icons.add_alert),
                    title: const Text('New York'),
                  ),
                  new ListTile(
                    leading: const Icon(Icons.add_shopping_cart),
                    title: const Text('Dallas'),
                  )
                ],
              )
            ],
          ),


        ),
     ),
     drawer: getNavDrawer(context),
     bottomNavigationBar: BottomNavigationBar(
       type: BottomNavigationBarType.fixed,
       items: [
         _buildItem(icon: Icons.view_headline, name: Text),
         _buildItem(icon: Icons.format_size),
         _buildItem(icon: Icons.layers),
       ],
//       onTap: () {
//         //todo
//        }
     ),
   );
  }
} //end class HomeScreenState

