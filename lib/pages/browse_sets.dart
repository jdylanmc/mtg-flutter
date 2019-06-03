import 'package:flutter/material.dart';
import 'package:mtgflutter/common/app/app_background.dart';
import 'package:mtgflutter/common/app/app_scaffold.dart';
import 'package:mtgflutter/common/widgets/setlistwidget.dart';

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
          MtgSetList()
        ],
      )),
    );
  }
}
