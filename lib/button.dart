import 'package:flutter/material.dart';

typedef void CalcButtonTapCallback({String buttonText});
List<String> nums = ['1', '2', '3', '4', '5', '6', '7', '8', '9', '0'];

class Button extends StatelessWidget {
  Button({this.text, this.onTap});

  final String text;
  final CalcButtonTapCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      child: TextButton(
          child: Text(text,
              style: TextStyle(
                  fontSize: 32,
                  fontWeight:
                      nums.contains(text) ? FontWeight.bold : FontWeight.normal,
                  color: Colors.black54)),
          onPressed: () => onTap(buttonText: text)),
      padding: EdgeInsets.all(8.0),
      margin: EdgeInsets.all(2.0),
      color: nums.contains(text) ? Colors.black38 : Colors.white,
    ));
  }
}
