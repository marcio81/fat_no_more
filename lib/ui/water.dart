import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Water extends StatefulWidget {
  @override
  _WaterState createState() => _WaterState();
}

class _WaterState extends State<Water> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: <Widget>[
        ],
      ),

      bottomNavigationBar: this._buildBottomAppBar(context),
    );
  }

  BottomAppBar _buildBottomAppBar(BuildContext context) {
    return BottomAppBar(
      color: Theme
          .of(context)
          .primaryColor,
      child: Row(
        children: <Widget>[
          // Bottom that pops up from the bottom of the screen.
          IconButton(
              icon: const Icon(Icons.keyboard_return),
              onPressed: () {
                Navigator.pop(context);
              }

          ),
        ],
      ),
    );
  }
}
