import 'package:flutter/material.dart';

class CardCell extends StatelessWidget {
  final card;

  CardCell(this.card);

  @override
  Widget build(BuildContext context) {
    var imageUrl = card["imageUrl"];
    if (imageUrl != null) {
      return Container(
        padding: EdgeInsets.all(12.0),
        child: Column(
          children: <Widget>[
          new Image.network(imageUrl),
          new Container(height: 6.0),
          new Text(card["name"], style: new TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold)),
          new Divider()
        ],)
      );
    }
    return new Container(); // if no image is supplied, skip this element
  }
}