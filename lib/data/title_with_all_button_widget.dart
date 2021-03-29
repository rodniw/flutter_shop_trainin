import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class TitleWithAllButtonWidget extends StatefulWidget {
  @override
  _StateTitleWithAllButtonWidget createState() => _StateTitleWithAllButtonWidget();
}

class _StateTitleWithAllButtonWidget extends State<TitleWithAllButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 24),
      child: Column(
        children: <Widget>[

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[

              Text(
                "BestDeals",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),

              Row(
                children: <Widget>[

                  Text(
                    "ALL",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey[400],
                    ),
                  ),

                  SizedBox(
                    width: 12,
                  ),

                  Icon(
                    Feather.arrow_right_circle,
                    color: Colors.grey[400],
                    size: 24,
                  ),

                ],
              ),

            ],
          )

        ],
      ),
    );
  }

}