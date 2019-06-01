import 'package:flutter/material.dart';
import 'package:mtgflutter/pages/lifecounter_page.dart';

void main() => runApp(MtgFlutter());

class MtgFlutter extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new MtgFlutterState();
  }
}

class MtgFlutterState extends State<MtgFlutter> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp( 
      debugShowCheckedModeBanner: false,
      home: new LifeCounterPage("Lifecounter"),
    );
  }
}
