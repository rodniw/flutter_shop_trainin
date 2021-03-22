import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_shop_trainin/constants.dart';
import 'package:flutter_shop_trainin/data.dart';

class FilterIcons extends StatefulWidget {
  @override
  _StateFilterIcons createState() => _StateFilterIcons();
}

class _StateFilterIcons extends State<FilterIcons> {
  List<Filter> filters = getFilterList();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      child: ListView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        children: buildFilters(),
      ),
    );
  }

  List<Widget> buildFilters() {
    List<Widget> list = [];
    list.add(buildFilterIcon());
    for (var filter in filters) {
      list.add(buildFilterOption(filter));
    }
    return list;
  }

  Widget buildFilterIcon() {
    return Container(
      width: 60,
      margin: EdgeInsets.only(right: 12,),
      decoration: BoxDecoration(
          color: kGreen,
          borderRadius: BorderRadius.all(
              Radius.circular(15)
          )
      ),
      child: Center(
        child: Icon (
          Octicons.settings,
          color: Colors.white,
          size: 32,
        ),
      ),
    );
  }

  Widget buildFilterOption(Filter filter) {
    return GestureDetector(
      onTap: () {
        setState(() {
          filter.selected = !filter.selected;
        });
      },
      child: Container(
        decoration: BoxDecoration(
          color: filter.selected ? kGreen : Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
          border: Border.all(
            width: 1,
            color: filter.selected ? kGreen : Colors.grey[300],
          ),
        ),
        padding: EdgeInsets.symmetric(horizontal: 32,),
        margin: EdgeInsets.only(right: 12,),
        child: Center(
          child: Text(
            filter.name,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: filter.selected ? Colors.white : kGreen,
            ),
          ),
        ),
      ),
    );
  }
}