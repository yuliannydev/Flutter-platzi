import 'package:flutter/material.dart';

// ignore: must_be_immutable
class GradientBack extends StatelessWidget {

  String detailsMovie = "Cartelera";

  GradientBack(this.detailsMovie);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300.0,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Color(0xffd35825), Color(0xffde9428)],
              begin: FractionalOffset(0.2, 0.0),
              end: FractionalOffset(1.0, 0.6),
              stops: [0.0, 0.6],
              tileMode: TileMode.clamp
              )
              ),

      child:  Text(
        detailsMovie,
        style: TextStyle(
          color: Colors.white,
          fontSize: 24.0,
          fontFamily: "Lato",
          fontWeight: FontWeight.bold
        ),
      ),

      alignment: Alignment(-0.9, -0.7),

    );
  }
}
