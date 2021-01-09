import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Fasting extends StatefulWidget {
  @override
  _FastingState createState() => _FastingState();
}

class _FastingState extends State<Fasting> {
  FloatingActionButtonLocation _fabLocation = FloatingActionButtonLocation.centerDocked;
  bool _isBottomBarNotched = true;
  bool _isFabMini = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: <Widget>[

        ],
      ),
      floatingActionButton: FloatingActionButton(
        mini: this._isFabMini,
        onPressed: () =>
            Fluttertoast.showToast(msg: 'Dummy floating action button'),
        child: const Icon(Icons.play_arrow),
      ),
      floatingActionButtonLocation: this._fabLocation,
      bottomNavigationBar: this._buildBottomAppBar(context),
    );
  }

  BottomAppBar _buildBottomAppBar(BuildContext context) {
    return BottomAppBar(
      shape: this._isBottomBarNotched
          ? const CircularNotchedRectangle()
          : null,
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