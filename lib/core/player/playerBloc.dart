import 'package:bloc/bloc.dart';
import 'package:mtgflutter/core/player/playerEvent.dart';
import 'player.dart';

class PlayerBloc extends Bloc<PlayerEvent, Player> {

  @override
  Player get initialState => Player("Joe", 20, 0, 0, 0, 0);

  @override
  Stream<Player> mapEventToState(PlayerEvent event) async* {
    print("mapEventToState called");
    if (event.type == PlayerCounterType.Life &&
        event.direction == PlayerDirectionType.Increment) {
      yield new Player(currentState.name, currentState.life + 1, currentState.energy, currentState.experience, currentState.plague, currentState.poison);
    } else if (event.type == PlayerCounterType.Life &&
        event.direction == PlayerDirectionType.Decrement) {
      yield new Player(currentState.name, currentState.life - 1, currentState.energy, currentState.experience, currentState.plague, currentState.poison);
    } else if (event.type == PlayerCounterType.Energy &&
        event.direction == PlayerDirectionType.Increment) {
      yield new Player(currentState.name, currentState.life, currentState.energy + 1, currentState.experience, currentState.plague, currentState.poison);
    } else if (event.type == PlayerCounterType.Energy &&
        event.direction == PlayerDirectionType.Decrement) {
      yield new Player(currentState.name, currentState.life, currentState.energy - 1, currentState.experience, currentState.plague, currentState.poison);
    } else if (event.type == PlayerCounterType.Experience &&
        event.direction == PlayerDirectionType.Increment) {
      yield new Player(currentState.name, currentState.life, currentState.energy, currentState.experience + 1, currentState.plague, currentState.poison);
    } else if (event.type == PlayerCounterType.Experience &&
        event.direction == PlayerDirectionType.Decrement) {
      yield new Player(currentState.name, currentState.life, currentState.energy, currentState.experience - 1, currentState.plague, currentState.poison);
    } else if (event.type == PlayerCounterType.Plague &&
        event.direction == PlayerDirectionType.Increment) {
      yield new Player(currentState.name, currentState.life, currentState.energy, currentState.experience, currentState.plague + 1, currentState.poison);
    } else if (event.type == PlayerCounterType.Plague &&
        event.direction == PlayerDirectionType.Decrement) {
      yield new Player(currentState.name, currentState.life, currentState.energy, currentState.experience, currentState.plague - 1, currentState.poison);
    } else if (event.type == PlayerCounterType.Poison &&
        event.direction == PlayerDirectionType.Increment) {
      yield new Player(currentState.name, currentState.life, currentState.energy, currentState.experience, currentState.plague, currentState.poison + 1);
    } else if (event.type == PlayerCounterType.Poison &&
        event.direction == PlayerDirectionType.Decrement) {
      yield new Player(currentState.name, currentState.life, currentState.energy, currentState.experience, currentState.plague, currentState.poison - 1);
    }
  }
}