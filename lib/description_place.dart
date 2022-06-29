import "package:flutter/material.dart";
import 'button_purple.dart';

class DescriptionPlace extends StatelessWidget{

  String namePlace;
  int star;
  String descriptionPlace;

  DescriptionPlace(this.namePlace, this.star, this.descriptionPlace);

  @override
  Widget build(BuildContext context){
    final stars = Container(
      margin: const EdgeInsets.only(
        top: 323.0,
        right: 3.0,
      ),
      child: const Icon(
        Icons.star,
        color: Colors.amber,
        size: 25,
      ),
    );

    final starHalf = Container(
      margin: const EdgeInsets.only(
        top: 323.0,
        right: 3.0,
      ),
      child: const Icon(
        Icons.star_border,
        color: Colors.amber,
        size: 25,
      ),
    );

    final description = Container(
      margin: const EdgeInsets.only(
        top: 20.0,
        left: 20.0,
        right: 20.0,
      ),
      child: Text(descriptionPlace,
        textAlign: TextAlign.left,
        style: const TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.bold,
          fontFamily: 'Lato',
          color: Color(0xFF56575a),
        ),
      ),
    );

    final titleStars = Row(
      children: <Widget>[
        Container(
          margin: const EdgeInsets.only(
            top: 320.0,
            left: 20.0,
            right: 20.0,
          ),
          child: Text(namePlace,
            style: const TextStyle(
              fontWeight: FontWeight.w900,
              fontFamily: 'Lato',
              fontSize: 30.0,
            ),
          ),
        ),
        Row(
          children: <Widget>[
            stars,
            stars,
            stars,
            stars,
            starHalf,
          ],
        )
      ],
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        titleStars,
        description,
        ButtonPurple("Navigate")
      ],
    );
  }
}