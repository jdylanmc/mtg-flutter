import 'package:flutter/material.dart';
import 'package:mtgflutter/styleguide/colors.dart';

import 'app_drawer.dart';

class AppScaffold extends StatelessWidget {
  final Widget body;
  final String pageTitle;
  final FloatingActionButton floatingActionButton;

  // AppScaffold({this.body, this.pageTitle});

  AppScaffold({this.body, this.pageTitle, this.floatingActionButton});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(title: new Text(pageTitle)),
      drawer: AppDrawer(), 
      body: body,
      floatingActionButton: floatingActionButton,
      
    );
  }
}