import 'package:flutter/material.dart';
import 'calc-row.dart';

typedef void CalcButtonTapCallback({String buttonText});

class ButtonList extends StatelessWidget {
  ButtonList({this.onTap});

  final CalcButtonTapCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: Column(
        children: <Widget>[
          CalcRow(buttons: [], onTap: onTap),
          CalcRow(
            buttons: ['C', '%', '/', '<-'],
            onTap: onTap,
          ),
          CalcRow(
            buttons: ['7', '8', '9', 'X'],
            onTap: onTap,
          ),
          CalcRow(
            buttons: ['4', '5', '6', '-'],
            onTap: onTap,
          ),
          CalcRow(
            buttons: ['1', '2', '3', '+'],
            onTap: onTap,
          ),
          CalcRow(
            buttons: ['0', '00', ',', '='],
            onTap: onTap,
          ),
        ],
      )),
      color: Colors.grey[200],
    );
  }
}
