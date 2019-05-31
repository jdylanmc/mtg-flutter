import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'views/card-cell.dart';

void main() => runApp(HelloFlutter());

class HelloFlutter extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new HelloFlutterState();
  }
}

class HelloFlutterState extends State<HelloFlutter> {
  var _isLoading = true;
  var pageSize = 10;
  var pageNum = 0;

  var cards;

  _fetchData() async {
    print("Fetching data...");

    final url =
        "https://api.magicthegathering.io/v1/cards?page=$pageNum&pageSize=$pageSize";

    final response = await http.get(url);

    if (response.statusCode == 200) {
      print("status code is 200");

      final map = json.decode(response.body);

      final cardsJson = map["cards"];
      this.cards = cardsJson;

      setState(() {
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
          appBar: new AppBar(
            title: new Text("HELLO FLUTTER!!"),
            centerTitle: true,
            actions: <Widget>[
              new IconButton(
                icon: new Icon(Icons.refresh),
                onPressed: () {
                  setState(() {
                    _isLoading = true;
                  });
                  _fetchData();
                },
              )
            ],
          ),
          body: new Center(
            child: _isLoading
                ? new CircularProgressIndicator()
                : new ListView.builder(
                    itemCount: this.cards != null ? this.cards.length : 0,
                    itemBuilder: (context, i) {
                      final card = this.cards[i];
                      return new FlatButton(
                        padding: new EdgeInsets.all(0.0),
                        child: new CardCell(card),
                        onPressed: () {
                          print("Card cell was clicked: $i");
                          Navigator.push(context,
                            new MaterialPageRoute(
                              builder: (context) => new CardDetailPage(card["id"])
                            )
                          );
                        },
                      );
                    }),
          )),
    );
  }
}





class CardDetailPage extends StatefulWidget {
  final cardId;

  CardDetailPage(this.cardId);

  @override
  State<StatefulWidget> createState() {
    return _CardDetailPageState(this.cardId);
  }
}

class _CardDetailPageState extends State<CardDetailPage> {
  var _isLoading = true;
  final cardId;
  var card;

  _CardDetailPageState(this.cardId);

  @override
  void initState() {
    super.initState();
    setState(() {
     _isLoading = true; 
    });
    _fetchData();
  }

  _fetchData() async {
    print("Fetching card $cardId");

    final url = "https://api.magicthegathering.io/v1/cards/$cardId";

    final response = await http.get(url);

    if (response.statusCode == 200) {
      print("Status code was 200 for $cardId");
      final cardJson = json.decode(response.body)["card"];
      this.card = cardJson;

      setState(() {
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: _isLoading ? new Text("Loading...") : new Text(card["name"]),
          centerTitle: true
        ),
        body: _isLoading 
          ? new CircularProgressIndicator()
          : new Text(card["text"])
      )
    );
  }
}