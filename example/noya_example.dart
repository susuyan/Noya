import 'package:super_enum/super_enum.dart';

void main() {

}

abstract class Animal {
  void walk() {}
}

class Dog implements Animal {

  void walk() {
    print('dog');
  }
}
