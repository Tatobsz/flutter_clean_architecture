import 'package:flutter_architecture/counter_module/adapters/repositories/counter.in_memory.repository.dart';
import 'package:flutter_architecture/counter_module/application/ports/repositories/counter_respository.dart';
import 'package:flutter_architecture/counter_module/application/use_cases/decrement_counter.usecase.dart';
import 'package:flutter_architecture/counter_module/application/use_cases/increment_counter.usecase.dart';
import 'package:flutter_architecture/counter_module/application/use_cases/ports/decrement_counter.port.usecase.dart';
import 'package:flutter_architecture/counter_module/application/use_cases/ports/increment_counter.port.usecase.dart';
import 'package:kiwi/kiwi.dart';

@Register.factory(IIncrementCounterUseCase, from: IncrementCounterUseCase)
@Register.factory(IDecrementCounterUseCase, from: DecrementCounterUseCase)
@Register.factory(ICounterRepository, from: CounterInMemoryRepository)
void configureCounterModule() {}
