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

              GestureDetector(
                onTap: () {
                  setState(() {
                    perfume.favorite = !perfume.favorite;
                  });
                },
                child: Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(15),
                      ),
                    ),
                    width: 60,
                    height: 60,
                    child: Center(
                      child: Icon(
                        perfume.favorite ? Icons.favorite : Icons.favorite_border,
                        size: 32,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.symmetric(vertical: 32, horizontal: 16,),
                child: Center(
                  child: Hero(
                    tag: perfume.name,
                    child: Image.asset(
                      perfume.images[0],
                      fit: BoxFit.fitHeight,
                      height: 160,
                    ),
                  ),
                ),
              ),

            ]
          ),
        ),

        SizedBox(
          height: 16,
        ),

        Text(
          perfume.name,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),

        SizedBox(
          height: 8,
        ),

        Text (
          "\$ " + perfume.price.toStringAsFixed(2),
          style: TextStyle(
            fontSize: 16,
            color: kGreen,
            fontWeight: FontWeight.bold,
          ),
        )

      ],
    );
  }

}