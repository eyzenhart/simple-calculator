import 'package:flutter/material.dart';
import 'button-list.dart';

List<String> nums = ['1', '2', '3', '4', '5', '6', '7', '8', '9'];

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  String calcString = '';

  void _handlePress({String buttonText}) {
    switch (buttonText) {
      case 'C':
        return setState(() {
          calcString = '';
        });
      case '<-':
        return setState(() {
          calcString = calcString == ''
              ? ''
              : calcString.substring(0, calcString.length - 1);
        });
      case ',':
        return setState(() {
          calcString += ("$buttonText");
        });
    }

    if (buttonText == '0') {
      if (calcString == '') {
        return setState(() {
          calcString = '';
        });
      } else {
        return setState(() {
          calcString += ("$buttonText");
        });
      }
    }

    if (nums.contains(buttonText)) {
      return setState(() {
        calcString += ("$buttonText");
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: Text('Калькулятор'),
        backgroundColor: Colors.black38,
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              alignment: Alignment.topRight,
              child: Text(
                calcString,
                style: TextStyle(fontSize: 60, fontWeight: FontWeight.bold),
              ),
              padding: EdgeInsets.all(20),
            ),
          ),
          ButtonList(onTap: _handlePress)
        ],
      ),
    );
  }
}
