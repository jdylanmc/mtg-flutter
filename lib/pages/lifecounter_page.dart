import 'package:flutter/material.dart';
import 'package:mtgflutter/common/app/app_background.dart';
import 'package:mtgflutter/common/app/app_scaffold.dart';
import 'package:mtgflutter/common/widgets/lifecounter.dart';

class LifeCounterPage extends StatelessWidget {
  final String pageText;

  LifeCounterPage(this.pageText);

  Widget build(BuildContext context) {
    return AppScaffold(
        pageTitle: this.pageText,
        body: SafeArea(
          child: Stack(
            children: <Widget>[
              AppBackground(),
              Center(
                child: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[Lifecounter()],
                  ),
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            print("todo: add player");
          },
          icon: Icon(Icons.group_add),
          label: Text("Add Player"),
        ));
  }
}
