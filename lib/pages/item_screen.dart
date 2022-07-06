import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:g60_app_flutter_final/pages/floor_card_screen.dart';

import '../model/Floors.dart';
import 'detail_screen.dart';

class ItemScreem extends StatelessWidget {
  List<Floors> typesFloors;
  ItemScreem(this.typesFloors, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(5),
        padding: EdgeInsets.all(5),
        height: 320,
        //width: 350,
        width: double.infinity,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: typesFloors.length,
          itemBuilder: (context, index) =>
              FloorCardScreen(typesFloors[index], () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => DetailScreen(typesFloors[index])));
          }),
        ));
  }
}
