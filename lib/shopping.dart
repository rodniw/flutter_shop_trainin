import 'package:flutter/material.dart';
import 'package:flutter_shop_trainin/appbar_widget.dart';
import 'package:flutter_shop_trainin/data.dart';
import 'package:flutter_shop_trainin/filters_list_widget.dart';
import 'package:flutter_shop_trainin/items_list_widget.dart';
import 'package:flutter_shop_trainin/scroll_title_widget.dart';

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
        physics: BouncingScrollPhysics(),
        child: Container(
          padding: EdgeInsets.only(left: 24, top: 16, bottom: 16,),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[

                ScrollTitle(),

                SizedBox(
                  height: 32,
                ),

                FilterIcons(),

                SizedBox(
                  height: 32,
                ),

                ListViewWidget(),

              ]
          ),
        ), //ScrollTitle(),
      ),
    );
  }

}