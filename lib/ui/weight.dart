import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Weight extends StatefulWidget {
  @override
  _WeightState createState() => _WeightState();
}

class _WeightState extends State<Weight> {
  DateTime selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("WEIGHT"), centerTitle: true,
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FlatButton(
                child: Text("Day"),textColor: Colors.white,
                onPressed: (){},
              ),
              FlatButton(
                child: Text("Month"), textColor: Colors.white,
                onPressed: (){},
              ),
              FlatButton(
                child: Text("Year"), textColor: Colors.white,
                onPressed: (){},
              ),
            ],
          ),
          Container(
            child: Column(

            ),
          ),
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
