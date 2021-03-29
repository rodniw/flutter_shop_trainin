import 'package:flutter/material.dart';
import 'package:flutter_shop_trainin/data/best_deals_list_widget.dart';
import 'package:flutter_shop_trainin/data/title_with_all_button_widget.dart';
import 'package:flutter_shop_trainin/widget/appbar_widget.dart';
import 'package:flutter_shop_trainin/data/data_source.dart';
import 'package:flutter_shop_trainin/data/filters_list_widget.dart';
import 'package:flutter_shop_trainin/data/items_list_widget.dart';
import 'package:flutter_shop_trainin/data/scroll_title_widget.dart';

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

                TitleWithAllButtonWidget(),

                SizedBox(
                  height: 32,
                ),

                BestDealsListWidget(),

              ]
          ),
        ), //ScrollTitle(),
      ),
    );
  }

}