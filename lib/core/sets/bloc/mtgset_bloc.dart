import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:http/http.dart' as http;
import 'package:mtgflutter/core/sets/bloc/states/set_states.dart';
import 'package:rxdart/rxdart.dart';

import '../mtgset.dart';
import 'events/set_events.dart';

export './events/set_events.dart';
export './states/set_states.dart';

class MtgSetBloc extends Bloc<MtgSetEvent, MtgSetState> {
  final http.Client httpClient;

  MtgSetBloc({@required this.httpClient});

  @override
  MtgSetState get initialState => MtgSetUninitialized();

  @override
  Stream<MtgSetState> mapEventToState(MtgSetEvent event) async* {
    if (event is FetchMtgSets) {
      try {
        if (currentState is MtgSetUninitialized) {
          final sets = await _fetchSets();
          yield MtgSetLoaded(sets: sets);
          return;
        }
      } catch (_) {
        yield MtgSetError();
      }
    }
  }

  @override
  Stream<MtgSetState> transform(
    Stream<MtgSetEvent> events,
    Stream<MtgSetState> Function(MtgSetEvent event) next,
  ) {
    return super.transform(
      (events as Observable<MtgSetEvent>).debounceTime(
        Duration(milliseconds: 500),
      ),
      next,
    );
  }

  Future<List<MtgSet>> _fetchSets() async {
    final response = await httpClient.get('https://api.scryfall.com/sets');

    if (response.statusCode == 200) {
      Map<String, dynamic> object = json.decode(response.body);

      final data = object['data'] as List;
      final validTypes = ["commander", "core", "expansion", "draft_innovation", "masters"];

      return data.map((rawSet) {
        return MtgSet.fromJson(rawSet);
      }).where((x) => validTypes.contains(x.type)).toList();
    } else {
      throw Exception('error fetching sets');
    }
  }
}
