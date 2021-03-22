import 'package:flutter/material.dart';
import 'package:flutter_shop_trainin/utils/constants.dart';
import 'package:flutter_shop_trainin/data/data_source.dart';

class ListViewWidget extends StatefulWidget {
  @override
  _StateListView createState() => _StateListView();
}

class _StateListView extends State<ListViewWidget> {
  List<Perfume> perfumes = getPerfumeList();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      child: ListView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        children: buildItems(),
      ),
    );
  }

  List<Widget> buildItems() {
    List<Widget> list = [];
    for (var perfume in perfumes) {
      list.add(buildItem(perfume));
    }
    return list;
  }

  Widget buildItem(Perfume perfume) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[

        Container(
          width: 200,
          height: 270,
          decoration: BoxDecoration(
            gradient: kGradient,
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            )
          ),
          margin: EdgeInsets.only(right: 24,),
          child: Stack(
            children: <Widget>[

            ]
          ),
        )

      ],
    );
  }

}