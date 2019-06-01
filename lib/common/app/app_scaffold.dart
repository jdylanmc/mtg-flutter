import 'package:flutter/material.dart';
import 'package:mtgflutter/styleguide/colors.dart';

import 'app_drawer.dart';

class AppScaffold extends StatelessWidget {
  final Widget body;
  final String pageTitle;

  AppScaffold({this.body, this.pageTitle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(title: new Text(pageTitle), backgroundColor: jet),
      drawer: AppDrawer(), 
      body: body
    );
  }
}