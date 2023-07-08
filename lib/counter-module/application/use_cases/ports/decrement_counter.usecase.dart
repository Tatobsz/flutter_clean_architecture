import 'package:flutter_architecture/counter_module/domain/entities/counter.dart';

import '../../../../counter_module/application/ports/repositories/counter_respository.dart';
import '../../../../counter_module/application/use_cases/ports/decrement_counter.port.usecase.dart';

class DecrementCounterUseCase implements IDecrementCounterUseCase {
  final ICounterRepository _counterRepository;

  DecrementCounterUseCase(this._counterRepository);

  @override
  Future<Counter> call(Counter counter) async {
    final newCounter = counter..decrement();
    await _counterRepository.save(newCounter);
    return newCounter;
  }
}
