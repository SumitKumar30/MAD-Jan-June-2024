// Mixins are a way of reusing a class’s code in multiple class hierarchies.
void main(List<String> args) {
  final person = Person();
  person.jump(speed: 10.0);
  person.walk(speed: 5.0);
  // CanJump canJ = CanJump();
}

mixin HasSpeed {
  abstract double speed;
}

// Mixin implemented on another mixin
mixin CanJump on HasSpeed {
  void jump({required double speed}) {
    print('$runtimeType is jumping at the speed of $speed');
    this.speed = speed;
  }
}

// another mixin implemented on HasSpeed
mixin CanWalk on HasSpeed {
  void walk({required double speed}) {
    print('$runtimeType is walking at the speed of $speed');
    this.speed = speed;
  }
}

// Parent mixin has to go first
class Person with HasSpeed, CanJump, CanWalk {
  @override
  double speed;

  Person() : speed = 0.0;
}
