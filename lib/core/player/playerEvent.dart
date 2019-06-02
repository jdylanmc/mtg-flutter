// todo: better name
enum PlayerDirectionType {
  Increment,
  Decrement
}

enum PlayerCounterType {
  Life,
  Energy,
  Experience,
  Plague,
  Poison
}

class PlayerEvent {
  PlayerCounterType type;
  PlayerDirectionType direction;

  PlayerEvent(this.type, this.direction);
}