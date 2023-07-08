import 'package:flutter_architecture/counter_module/domain/entities/counter.dart';

abstract class IDecrementCounterUseCase {
  Future<Counter> call(Counter counter);
}
