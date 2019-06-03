import 'package:flutter/material.dart';
import 'package:mtgflutter/core/sets/bloc/mtgset_bloc.dart';
import 'package:mtgflutter/pages/lifecounter_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mtgflutter/styleguide/colors.dart';
import 'core/player/playerBloc.dart';
import 'package:http/http.dart' as http;

void main() => runApp(MtgFlutter());

class MtgFlutter extends StatefulWidget {
  @override
  _MtgFlutterState createState() => _MtgFlutterState();
}

class _MtgFlutterState extends State<MtgFlutter> {
  final PlayerBloc _playerBloc = PlayerBloc();
  final MtgSetBloc _setsBloc = MtgSetBloc(httpClient: http.Client());

  @override
  Widget build(BuildContext context) {
    return BlocProviderTree(
        blocProviders: [
          BlocProvider<PlayerBloc>(bloc: _playerBloc),
          BlocProvider<MtgSetBloc>(bloc: _setsBloc)
        ],
        child: MaterialApp(
            title: "Mtg Flutter",
            debugShowCheckedModeBanner: false,
            home: LifeCounterPage("Lifecounter"),
            theme: appTheme));
  }

  @override
  void dispose() {
    _playerBloc.dispose();
    _setsBloc.dispose();
    super.dispose();
  }
}