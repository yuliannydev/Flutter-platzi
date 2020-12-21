import 'package:flutter/material.dart';


// ignore: must_be_immutable
class ButtonInkWell extends StatelessWidget {

String buttonText = "Mirar";

ButtonInkWell(this.buttonText);

  @override
  Widget build(BuildContext context) {



    return InkWell(
      onTap: () {
        Scaffold.of(context).showSnackBar(
          SnackBar(
            content: Text("Mirando"),
            )
          );
      },
      child: Container(
        margin: EdgeInsets.only(
          top: 30.0,
          left: 20.0,
          right: 20.0
        ),

        height: 50.0,
        width: 130,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          gradient: LinearGradient(
          colors: [
            Color(0xffd35825),
            Color(0xffde9428)
            ],
            begin: FractionalOffset(0.2, 0.0),
            end: FractionalOffset(1.0, 0.6),
            stops: [0.0, 0.6],
            tileMode: TileMode.clamp
        )
      ),

      child: Center(
        child: Text(
          buttonText,
          style: TextStyle(
            fontSize: 16.0,
            fontFamily: "Lato",
            color: Colors.white
          ),
        ),
        ),
      ),
    );
  }
}
