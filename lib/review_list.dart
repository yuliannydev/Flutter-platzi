import 'package:flutter/material.dart';
import 'review.dart';

class ReviewList extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Review("assets/img/joker.png", "Harley Q.", "1 review · 9 photos", "Voy a tener que hablar con Bats"),
        Review("assets/img/hq.png", "Joker", "21 review · 20 photos", "Pudin, no te enojes."),
        Review("assets/img/ww.png", "WonderWoman", "6 review · 3 photos", "Hombres, bffff."),
        Review("assets/img/ng.png", "Nightwing", "13 review · 8 photos", "Esa película era conmigo."),
        Review("assets/img/Ra's-al-Ghul.png", "Ra's al Ghul", "256 review · 101 photos", "Aburrido."),
        Review("assets/img/robin.png", "Robin", "63 review · 11 photos", "@Nightwing a nadie le interesa."),

      ],
    );
  }
}
