import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 2;

  var ranNum = 20;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  leftDiceNumber = Random().nextInt(6) + 1;
                });
              },
              child: Image.asset('images/dice$leftDiceNumber.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  rightDiceNumber = Random().nextInt(6) + 1;
                });
              },
              child: Image.asset('images/dice$rightDiceNumber.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  ranNum = Random().nextInt(100);
                });
              },
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 10.0),
                  borderRadius: BorderRadius.all(Radius.circular(3.0)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(28.0),
                  child: Text(
                    ranNum.toString(),
                    style: TextStyle(
                      fontSize: 21.0,
                      color: Colors.yellow[500],
                      letterSpacing: 1.0,
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
