class Performer {
  void perform() => print('Performs!');
}

mixin Guitarist {
  void playGuitar() => print('Playing the Guitar!');
  void perform() => playGuitar();
}

mixin Drummer {
  void playDrums() => print('Playing the Drums!');
  void perform() => playDrums();
}

class Musician extends Performer with Guitarist, Drummer {}

void main(List<String> args) {
  Musician musician = Musician();
  // musician.playDrums();
  // musician.playGuitar();
  musician.perform();
}
