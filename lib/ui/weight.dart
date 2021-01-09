
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Weight extends StatefulWidget {
  @override
  _WeightState createState() => _WeightState();
}

class _WeightState extends State<Weight> {
  DateTime selectedDate = DateTime.now();
  String finalDate = '';
  String peso = '';
  TextEditingController pesoController = new TextEditingController();

  getCurrentDate(){

    var date = new DateTime.now().toString();

    var dateParse = DateTime.parse(date);

    var formattedDate = "${dateParse.day}-${dateParse.month}-${dateParse.year}";

    setState(() {

      finalDate = formattedDate.toString() ;

    });

  }

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
              children: [
                TextField(
                  onChanged: (newText) { peso = newText; },
                  controller: pesoController,
                  obscureText: true,
                  textAlign: TextAlign.left,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'PLEASE ENTER YOUR WEIGHT',
                    hintStyle: TextStyle(color: Colors.grey),
                  ),

                ),
                RaisedButton(
                  onPressed: getCurrentDate,
                  color: Colors.green,
                  textColor: Colors.white,
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                  child: Text('ADD'),
                ),
                Padding(
                    padding: EdgeInsets.all(8.0),
                    child :
                    Text("$peso in $finalDate", style: TextStyle(fontSize: 20), textAlign: TextAlign.center,)
                ),
              ],
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

