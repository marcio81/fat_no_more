import 'package:fat_no_more/ui/fasting.dart';
import 'package:fat_no_more/ui/water.dart';
import 'package:fat_no_more/ui/weight.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(

    ),

  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("FAT NO MORE"), centerTitle: true,
      ),
      body: Container(

        child: Center(
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Expanded(child: Container(),),
            RaisedButton(
              child: Text('Fasting'),

              color: Colors.lightBlue,
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Fasting()));
                // Navigate to second route when tapped.
              },
            ),
            RaisedButton(
              child: Text('Weight'),

              color: Colors.lightBlue,
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Weight()));
                // Navigate to second route when tapped.
              },
            ),
            RaisedButton(
              child: Text('Exercise'),

              color: Colors.lightBlue,
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Weight()));
                // Navigate to second route when tapped.
              },
            ),
            RaisedButton(
              child: Text('Water'),

              color: Colors.lightBlue,
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Water()));
                // Navigate to second route when tapped.
              },
            ),
            Expanded(child: Container(),),

          ],
        ),
        ),
      ),
    );
  }
  
}

