class Counter {
  int _value;

  Counter({required int value}) : _value = value;

  int get value => _value;

  Counter increment() {
    _value++;
    return this;
  }

  Counter decrement() {
    _value--;
    return this;
  }
}
