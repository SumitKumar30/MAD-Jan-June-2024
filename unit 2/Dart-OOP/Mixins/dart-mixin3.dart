abstract class Performer {
  void perform() => print('performing...');
}

mixin Dancer on Performer {
  void perform() {
    super.perform();
    print('Dancing...');
  }
}

mixin Singer on Performer {
  void perform() {
    super.perform();
    print('Singing...');
  }
}

class Musician extends Performer with Singer, Dancer {
  void showTime() {
    super.perform();
    print('Its show time');
  }
}

void main() {
  Musician m = Musician();
  m.showTime();
  // m.perform();

  // Dancer d = Dancer(); --> mixins cannot be instantiated
}
