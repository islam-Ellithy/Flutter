import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        home: new Scaffold(
          drawer: _buildDrawer(),
      appBar: new AppBar(
          title: new Row(
        children: <Widget>[new Icon(Icons.home), new Text("JemApp")],
      )),
      body: new Center(
        child: new ListView(
          children: <Widget>[
            createCard(Icons.home, "Home", Colors.red),
            createCard(Icons.account_balance, "Index", Colors.blue),
            createCard(Icons.alarm, "Alarm", Colors.yellow),
            createCard(Icons.home, "Home", Colors.red),
            createCard(Icons.account_balance, "Index", Colors.blue),
            createCard(Icons.alarm, "Alarm", Colors.yellow),
            createCard(Icons.home, "Home", Colors.red),
            createCard(Icons.account_balance, "Index", Colors.blue),
            createCard(Icons.alarm, "Alarm", Colors.yellow),
            createCard(Icons.home, "Home", Colors.red),
            createCard(Icons.account_balance, "Index", Colors.blue),
            createCard(Icons.alarm, "Alarm", Colors.yellow),
            new ListTile(
                title: new Text("OK"),
                onTap: () {
                  print("you clicked me");
                })
          ],
        ),
      ),
    ));
  }

  Drawer _buildDrawer() {
    return new Drawer(
          child: new ListView(
            children: <Widget>[
              createCard(Icons.home, "Home", Colors.red),
              createCard(Icons.account_balance, "Index", Colors.blue),
              createCard(Icons.alarm, "Alarm", Colors.yellow),
              ListTile(
                title: Text("Tile me"),

              ),
            ],
          ),
        );
  }

  Card createCard(var icon, var title, var color) {
    return new Card(
        child: Padding(
      padding: const EdgeInsets.all(18.0),
      child: new Row(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: new Icon(
              icon,
              size: 50.0,
              color: color,
            ),
          ),
          new Text(
            title,
            style: new TextStyle(fontSize: 40, color: color),
          )
        ],
      ),
    ));
  }
}
