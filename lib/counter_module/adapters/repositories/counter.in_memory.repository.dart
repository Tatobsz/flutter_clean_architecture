import '../../domain/entities/counter.dart';
import '../../application/ports/repositories/counter_respository.dart';

class CounterInMemoryRepository implements ICounterRepository {
  Counter _counter = Counter(value: 0);

  @override
  Future<Counter> get() {
    return Future.value(_counter);
  }

  @override
  Future<void> save(Counter data) {
    _counter = data;
    return Future.value();
  }
}
