import 'package:flutter/material.dart';
import 'package:helloflutter/common/app/app_background.dart';
import 'package:helloflutter/common/app/app_scaffold.dart';

class BrowseSetsPage extends StatelessWidget {
  final String pageText;
  
  BrowseSetsPage(this.pageText);

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