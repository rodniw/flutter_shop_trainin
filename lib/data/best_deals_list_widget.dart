import 'package:flutter/material.dart';
import 'package:flutter_shop_trainin/data/data_source.dart';
import 'package:flutter_shop_trainin/utils/constants.dart';

class BestDealsListWidget extends StatefulWidget {
  @override
  _StateBestDealsListWidget createState() => _StateBestDealsListWidget();
}

class _StateBestDealsListWidget extends State<BestDealsListWidget> {

  List<Perfume> perfumes = getPerfumeList();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      child: PageView(
        physics: BouncingScrollPhysics(),
        children: buildDeals(),
      ),
    );
  }

  List<Widget> buildDeals() {
    List<Widget> list = [];
    for (var perfume in perfumes) {
      if (perfume.discount > 0) {
        list.add(buildDeal(perfume));
      }
    }

    return list;
  }

  Widget buildDeal(Perfume perfume) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
        border: Border.all(
          width: 1,
          color: Colors.grey[300],
        ),
      ),
      margin: EdgeInsets.only(right: 24,),
      child: Stack(
        children: <Widget>[

          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              height: 50,
              width: 80,
              decoration: BoxDecoration(
                color: Color(0xFFFFB77D),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  bottomRight: Radius.circular(15),
                ),
              ),
              child: Center(
                child: Text(
                  "-" + perfume.discount.toStringAsFixed(0) + "%",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),

          Padding(
            padding: EdgeInsets.all(10),
            child: Row(
              children: <Widget>[

                Container(
                  width: 110,
                  decoration: BoxDecoration(
                    gradient: kGradient,
                    borderRadius: BorderRadius.all(
                      Radius.circular(25),
                    ),
                  ),
                  child: Center(
                    child: Image.asset(
                      perfume.images[0],
                      fit: BoxFit.fitHeight,
                      height: 90,
                    ),
                  ),
                ),

                SizedBox(
                  width: 16,
                ),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[

                    Text(
                      perfume.name,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    Text(
                      perfume.description,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey[400],
                      ),
                    ),

                    SizedBox(
                      height: 8,
                    ),

                    Text(
                      "\$ " + perfume.price.toStringAsFixed(2),
                      style: TextStyle(
                        fontSize: 16,
                        color: kGreen,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                  ],
                )

              ],
            ),
          )

        ],
      ),
    );
  }
}