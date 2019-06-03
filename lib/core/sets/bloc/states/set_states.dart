import 'package:equatable/equatable.dart';

import '../../mtgset.dart';



abstract class MtgSetState extends Equatable {
  MtgSetState([List props = const []]) : super(props);
}

class MtgSetUninitialized extends MtgSetState {
  @override
  String toString() => 'MtgSetUninitialized';
}

class MtgSetError extends MtgSetState {
  @override
  String toString() => 'MtgSetError';
}

class MtgSetLoaded extends MtgSetState {
  final List<MtgSet> sets;

  MtgSetLoaded({
    this.sets,
  }) : super([sets]);

  MtgSetLoaded copyWith({
    List<MtgSet> sets,
    bool hasReachedMax,
  }) {
    return MtgSetLoaded(
      sets: sets ?? this.sets
    );
  }

  @override
  String toString() =>
      'MtgSetLoaded { sets: ${sets.length} }';
}