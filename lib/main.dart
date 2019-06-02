import 'package:flutter/material.dart';
import 'package:mtgflutter/pages/lifecounter_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'core/player/playerBloc.dart';

void main() => runApp(MtgFlutter());

class MtgFlutter extends StatelessWidget {
  final PlayerBloc _playerBloc = PlayerBloc();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      bloc:_playerBloc,
      child: MaterialApp(
        title: "Mtg Flutter",
        debugShowCheckedModeBanner: false,
        home:LifeCounterPage("Lifecounter")
      )
    );
  }
}