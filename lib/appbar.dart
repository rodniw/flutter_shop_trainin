import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class Appbar extends StatefulWidget implements PreferredSizeWidget {
  @override
  _AppBarState createState() => _AppBarState();

  @override
  Size get preferredSize {
    return new Size.fromHeight(56.0);
  }
}

class _AppBarState extends State<Appbar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 8,
      shadowColor: Colors.black,
      leading: Padding(
        padding: EdgeInsets.only(left: 24,),
        child: Icon(
            Icons.menu,
            size: 32,
            color: Colors.black
        ),
      ),
      actions: <Widget> [
        Padding(
          padding: EdgeInsets.only(right: 24,),
          child: Icon(
            Feather.shopping_bag,
            size: 32,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}