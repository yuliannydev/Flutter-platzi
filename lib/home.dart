import 'package:flutter/material.dart';
import 'description_place.dart';
import 'review_list.dart';
import 'header_appbar.dart';

// ignore: must_be_immutable
class Home extends StatelessWidget {
  String descriptionDummy = "Dawn of Justice es una película del género de superhéroes estadounidense de 2016 con los personajes de DC Comics Batman y Superman. Es la secuela de Man of Steel de 2013 y la segunda entrega del Universo extendido de DC (DCEU).";

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ListView(
          children: [
            DescriptionPlace("Batman vs Superman", 5, descriptionDummy),
            ReviewList(),
          ],
        ),
        HeaderAppBar()
      ],
    );
  }
}
