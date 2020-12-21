import 'package:flutter/material.dart';
import 'card_image.dart';

class CardImageList extends StatelessWidget {


  @override
  Widget build(BuildContext context) {


    return Container(
      height: 350.0,
      child: ListView(
        padding: EdgeInsets.all(25.0),
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          CardImage("assets/img/batvssup.png"),
          CardImage("assets/img/bs1.png"),
          CardImage("assets/img/bs2.png"),
          CardImage("assets/img/bs3.png"),
          CardImage("assets/img/bs4.png"),
          CardImage("assets/img/bs5.png")
        ],
      ),
    );
  }
}
