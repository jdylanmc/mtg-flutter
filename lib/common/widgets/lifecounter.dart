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