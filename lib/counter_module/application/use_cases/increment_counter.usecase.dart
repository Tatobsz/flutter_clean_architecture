import 'package:flutter_architecture/counter_module/domain/entities/counter.dart';

import '../ports/repositories/counter_respository.dart';
import 'ports/increment_counter.port.usecase.dart';

class IncrementCounterUseCase implements IIncrementCounterUseCase {
  final ICounterRepository _counterRepository;

  IncrementCounterUseCase(this._counterRepository);

  @override
  Future<Counter> call(Counter counter) async {
    final newCounter = counter..increment();
    await _counterRepository.save(newCounter);
    return newCounter;
  }
}
