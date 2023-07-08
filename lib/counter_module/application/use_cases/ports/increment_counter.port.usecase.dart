import 'package:flutter_architecture/counter_module/domain/entities/counter.dart';

abstract class IIncrementCounterUseCase {
  Future<Counter> call(Counter counter);
}
