import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  final pair;
  SecondScreen(this.pair);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("Details Screen"),
      ),
      body: Center(

        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(100.0),
              child: CircleAvatar(child: FlutterLogo(),),
            ),
            Text(pair.toString(),style: TextStyle(color: Colors.red,fontSize: 40),),
          ],
        ),
      ),
    );
  }
}
