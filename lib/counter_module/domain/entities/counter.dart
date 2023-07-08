class Counter {
  int _value;

  Counter({required int value}) : _value = value;

  int get value => _value;

  void increment() {
    _value++;
  }

  void decrement() {
    _value--;
  }
}
