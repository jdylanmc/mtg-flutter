import 'package:equatable/equatable.dart';

abstract class MtgSetEvent extends Equatable {}

class FetchMtgSets extends MtgSetEvent {
  @override
  String toString() => 'FetchMtgSets';
}