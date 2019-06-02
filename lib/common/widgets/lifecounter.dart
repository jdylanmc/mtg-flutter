import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mtgflutter/core/player/player.dart';
import 'package:mtgflutter/core/player/playerBloc.dart';
import 'package:mtgflutter/core/player/playerEvent.dart';

class Lifecounter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final PlayerBloc _playerBloc = BlocProvider.of<PlayerBloc>(context);

    return BlocBuilder<PlayerEvent, Player>(
      bloc: _playerBloc,
      builder: (BuildContext context, Player player) {
        return Container(
          child: Card(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Center(
                  child: Text(
                    "${player.name}",
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.w500),
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Expanded(
                      flex: 2,
                      child: IconButton(
                        icon: Icon(Icons.remove),
                        onPressed: () {
                          _playerBloc.dispatch(
                            new PlayerEvent(PlayerCounterType.Life,
                                PlayerDirectionType.Decrement),
                          );
                        },
                        iconSize: 26,
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Center(
                        child: Text(
                          "${player.life}",
                          style: TextStyle(fontSize: 26),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: IconButton(
                        icon: Icon(Icons.add),
                        onPressed: () {
                          _playerBloc.dispatch(
                            new PlayerEvent(PlayerCounterType.Life,
                                PlayerDirectionType.Increment),
                          );
                        },
                        iconSize: 26,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

/*
class LifecounterOld extends StatefulWidget {
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
*/
