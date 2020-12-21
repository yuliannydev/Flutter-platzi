import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Review extends StatelessWidget {
  String urlImage = "https://imgur.com/gallery/nqHfU3H";
  String name = "Nathalie R.";
  String details = "1 review 5 photos";
  String comment = "Ese lugar es hermoso";

  Review(this.urlImage, this.name, this.details, this.comment);

  @override
  Widget build(BuildContext context) {
    final userComment = Container(
      margin: EdgeInsets.only(left: 20.0),
      child: Text(
        comment,
        textAlign: TextAlign.left,
        style: TextStyle(
            fontFamily: "Lato", fontSize: 12.0, fontWeight: FontWeight.w900),
      ),
    );

    final userInfo = Container(
      margin: EdgeInsets.only(left: 20.0),
      child: Text(
        details,
        textAlign: TextAlign.left,
        style: TextStyle(
            fontFamily: "Lato", fontSize: 12.0, color: Color(0xFFa3a5a7)),
      ),
    );

    final userName = Container(
      margin: EdgeInsets.only(left: 20.0),
      child: Text(
        name,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontFamily: "Lato",
          fontSize: 14.0,
        ),
      ),
    );


    final userDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        userName,
        userInfo,
        userComment,
        ],
    );


    final photo = Container(
      margin: EdgeInsets.only(top: 20.0, left: 20.0),
      width: 75.0,
      height: 75.0,

     /* decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(pathImage)
        )

        ),*/

      child: CircleAvatar(
      backgroundImage: NetworkImage(urlImage),
      ),
    );


    return Row(
      children: <Widget>[
        photo,
        userDetails
        ],
    );
  }
}
