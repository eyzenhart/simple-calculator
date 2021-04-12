import 'package:flutter/material.dart';
import 'button.dart';

typedef void CalcButtonTapCallback({String buttonText});

class CalcRow extends StatelessWidget {
  CalcRow({this.buttons, this.onTap});

  final List<String> buttons;
  final CalcButtonTapCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: _rowButtons(),
    );
  }

  List<Widget> _rowButtons() {
    List<Widget> rowButtons = [];
    buttons.forEach((String text) {
      rowButtons.add(Button(text: text, onTap: onTap));
    });
    return rowButtons;
  }
}
