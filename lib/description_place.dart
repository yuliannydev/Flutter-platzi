import 'package:flutter/material.dart';
import 'button_inkwell.dart';

class DescriptionPlace extends StatelessWidget {

  final String namePlace;
  final int stars;
  final String descriptionPlace;

  DescriptionPlace(this.namePlace, this.stars, this.descriptionPlace);

  Widget build(BuildContext context) {
    final starHalf = Container(
      margin: EdgeInsets.only(top: 350.0, right: 3.0),
      child: Icon(
        Icons.star_half,
        color: Colors.amber,
      ),
    );

    final starBorder = Container(
      margin: EdgeInsets.only(top: 350.0, right: 3.0),
      child: Icon(
        Icons.star_border,
        color: Colors.amber,
      ),
    );

    final star = Container(
      margin: EdgeInsets.only(top: 350.0, right: 3.0),
      child: Icon(
        Icons.star,
        color: Colors.amber,
      ),
    );

    final titleStars = Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: 350.0, left: 18.0, right: 18.0),
          child: Text(
            namePlace,
            style: TextStyle(
              fontFamily: "Lato",
              fontSize: 18.0,
              fontWeight: FontWeight.w900
              ),
            textAlign: TextAlign.left,
          ),
        ),
        Row(
          children: <Widget>[
            star,
            star,
            star,
            starHalf,
            starBorder,
          ],
        )
      ],
    );

    final description = Container(
      margin: EdgeInsets.all(20.0),
      child: Text(
        descriptionPlace,
        textAlign: TextAlign.justify,
        style: TextStyle(
          fontFamily: "Lato",
          fontSize: 15.0),
      ),
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
      titleStars,
      description,
      ButtonInkWell("Mirar")
    ],
    );


  }
}
