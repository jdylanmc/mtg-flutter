import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mtgflutter/common/widgets/mtgsetwidget.dart';
import 'package:mtgflutter/core/sets/bloc/mtgset_bloc.dart';

class MtgSetList extends StatefulWidget {
  @override
  _MtgSetListState createState() => _MtgSetListState();
}

class _MtgSetListState extends State<MtgSetList> {
  @override
  Widget build(BuildContext context) {
    final MtgSetBloc _setBloc = BlocProvider.of<MtgSetBloc>(context);

    _setBloc.dispatch(FetchMtgSets());

    return BlocBuilder<MtgSetEvent, MtgSetState>(
      bloc: _setBloc,
      builder: (BuildContext context, MtgSetState state) {
        if (state is MtgSetUninitialized) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
        if (state is MtgSetError) {
          return Center(
            child: Text('Failed to fetch sets.'),
          );
        }
        if (state is MtgSetLoaded) {
          if (state.sets.isEmpty) {
            return Center(
              child: Text("No sets available"),
            );
          }

          return ListView.builder(
            itemBuilder: (BuildContext context, int index) {
              return MtgSetWidget(set: state.sets[index]);
            },
            itemCount: state.sets.length,
          );
        }
      },
    );
  }
}


