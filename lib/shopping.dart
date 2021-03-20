import 'package:flutter/material.dart';
import 'package:flutter_shop_trainin/appbar.dart';

class Shopping extends StatefulWidget {
  @override
  _ShoppingState createState() => _ShoppingState();
}

class _ShoppingState extends State<Shopping> {
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: Appbar(),
      body: SingleChildScrollView(

      ),
    );
  }

}