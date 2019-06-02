import 'package:flutter/material.dart';
import 'package:mtgflutter/pages/browse_cards.dart';
import 'package:mtgflutter/pages/browse_sets.dart';
import 'package:mtgflutter/pages/lifecounter_page.dart';
import 'package:mtgflutter/pages/search_page.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: new ListView(
          children: <Widget>[
            new DrawerHeader(
              child: null,
              decoration: new BoxDecoration(
                image:DecorationImage(image: AssetImage('assets/unwind.png'), fit: BoxFit.cover)
              )
            ),
            new ListTile(
              title: new Text("Life Counter"),
              trailing: new Icon(Icons.arrow_right),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new LifeCounterPage("Lifecounter")));
              }
            ),
            new ListTile(
              title: new Text("Search"),
              trailing: new Icon(Icons.arrow_right),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new SearchPage("Search Page")));
              }
            ),
            new ListTile(
              title: new Text("Browse Sets"),
              trailing: new Icon(Icons.arrow_right),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new BrowseSetsPage("Browse Sets")));
              }
            ),
            new ListTile(
              title: new Text("Browse Cards"),
              trailing: new Icon(Icons.arrow_right),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new BrowseCardsPage("Browse Cards")));
              }
            ),
            new Divider(),
            new ListTile(
              title: new Text("Close"),
              trailing: new Icon(Icons.close),
              onTap: () => Navigator.of(context).pop()
            )
          ]
        ),
      );
  }
}