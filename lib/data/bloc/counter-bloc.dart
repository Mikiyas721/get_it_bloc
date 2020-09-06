import 'package:rxdart/rxdart.dart';

mixin Counter {
  final _counter = new BehaviorSubject<int>.seeded(0);
// expose your stream here

  Stream<int> get counterStream => _counter.stream;

  void increament() {
    _counter.value++;
  }

  void decrememt() {
    _counter.value--;
  }

  closecounter() {
    _counter.close();
  }
}
