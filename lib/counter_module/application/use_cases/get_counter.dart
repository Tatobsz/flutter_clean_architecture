import 'package:flutter_architecture/counter_module/domain/entities/counter.dart';

import '../ports/repositories/counter_respository.dart';
import 'ports/get_counter.port.dart';

class GetCounter implements IGetCounter {
  final ICounterRepository _counterRepository;

  GetCounter(this._counterRepository);

  @override
  Future<Counter> call() async {
    return await _counterRepository.get();
  }
}
