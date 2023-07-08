// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'injector.dart';

// **************************************************************************
// KiwiInjectorGenerator
// **************************************************************************

class _$Injector extends Injector {
  @override
  void configureCounterModule() {
    final KiwiContainer container = KiwiContainer();
    container
      ..registerFactory<IIncrementCounterUseCase>(
          (c) => IncrementCounterUseCase(c<ICounterRepository>()))
      ..registerFactory<IDecrementCounterUseCase>(
          (c) => DecrementCounterUseCase(c<ICounterRepository>()))
      ..registerFactory<ICounterRepository>((c) => CounterInMemoryRepository())
      ..registerFactory<IGetCounter>(
          (c) => GetCounter(c<ICounterRepository>()));
  }
}
