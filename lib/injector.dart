import 'package:flutter_architecture/counter_module/application/use_cases/get_counter.dart';
import 'package:flutter_architecture/counter_module/application/use_cases/ports/get_counter.port.dart';
import 'package:kiwi/kiwi.dart';

import 'counter-module/application/use_cases/ports/decrement_counter.usecase.dart';
import 'counter_module/adapters/repositories/counter.in_memory.repository.dart';
import 'counter_module/application/ports/repositories/counter_respository.dart';
import 'counter_module/application/use_cases/increment_counter.usecase.dart';
import 'counter_module/application/use_cases/ports/decrement_counter.port.usecase.dart';
import 'counter_module/application/use_cases/ports/increment_counter.port.usecase.dart';
part 'injector.g.dart';

abstract class Injector {
  static late KiwiContainer container;
  static final resolve = container.resolve;

  static void setup() {
    container = KiwiContainer();
    final injector = _$Injector();
    injector.configure();
  }

  void configure() {
    configureCounterModule();
  }

  @Register.factory(IIncrementCounterUseCase, from: IncrementCounterUseCase)
  @Register.factory(IDecrementCounterUseCase, from: DecrementCounterUseCase)
  @Register.factory(ICounterRepository, from: CounterInMemoryRepository)
  @Register.factory(IGetCounter, from: GetCounter)
  void configureCounterModule();
}
