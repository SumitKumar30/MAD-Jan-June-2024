class Performer {
  void perform() => print('Performs!');
}

mixin Guitarist {
  void perform() => print('Playing the Guitar!');
}

mixin Drummer {
  void perform() => print('Playing the Drums!');
}

class Musician extends Performer with Drummer, Guitarist {}

void main(List<String> args) {
  Musician musician = Musician();
  // musician.playDrums();
  // musician.playGuitar();
  musician.perform();
}
