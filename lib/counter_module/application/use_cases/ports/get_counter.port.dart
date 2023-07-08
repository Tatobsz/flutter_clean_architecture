import '../../../domain/entities/counter.dart';

abstract class IGetCounter {
  Future<Counter> call();
}
