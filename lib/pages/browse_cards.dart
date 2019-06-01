import 'package:flutter/material.dart';
import 'package:mtgflutter/common/app/app_background.dart';
import 'package:mtgflutter/common/app/app_scaffold.dart';

class BrowseCardsPage extends StatelessWidget {
  final String pageText;
  
  BrowseCardsPage(this.pageText);

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      pageTitle: this.pageText,
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            AppBackground(),
            Center(child: Text(this.pageText, style: new TextStyle(fontSize: 35)))
          ],
        )
      ),
    );
  }
}