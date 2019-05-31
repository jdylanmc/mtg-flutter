import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Lifecounter extends StatefulWidget {
  @override
  _LifecounterState createState() => _LifecounterState();
}

class _LifecounterState extends State<Lifecounter> {
  int lifeTotal = 20;
  
  @override
  void initState() {
    super.initState();
  }

  void _decrementLife() {
    setState(() {
      lifeTotal--;
    });
  }

  void _incrementLife() {
    setState(() {
      lifeTotal++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Expanded(child: IconButton(
              icon: Icon(Icons.remove),
              onPressed: _decrementLife,
              iconSize: 30,
            )),
            Expanded(child: Center(child: Text(lifeTotal.toString(), style:TextStyle(fontSize: 36)))),
            Expanded(child: IconButton(
              icon:Icon(Icons.add),
              onPressed: _incrementLife,
              iconSize: 30,
            ))
            
            
          ]
        );
  }
}