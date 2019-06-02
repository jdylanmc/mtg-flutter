import 'package:meta/meta.dart';
import 'package:mtgflutter/core/player/playerEvent.dart';
import 'package:equatable/equatable.dart';

@immutable
class Player extends Equatable {
  final String name;
  final int life;
  final int energy;
  final int experience;
  final int plague;
  final int poison;

  Player(this.name, this.life, this.energy, this.experience, this.plague, this.poison) : super([name, life]);
}
