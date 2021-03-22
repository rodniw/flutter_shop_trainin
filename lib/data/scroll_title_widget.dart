import 'package:flutter/material.dart';

class ScrollTitle extends StatefulWidget {
  @override
  _StateScrollTitle createState() => _StateScrollTitle();
}

class _StateScrollTitle extends State<ScrollTitle> {
  @override
  Widget build(BuildContext context) {
    return Text(
      "Perfumes",
      style: TextStyle(
          fontSize: 36,
          fontWeight: FontWeight.bold
      ),
    );
  }

}