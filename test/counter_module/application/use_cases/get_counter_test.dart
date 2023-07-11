import 'package:flutter_architecture/counter_module/application/ports/repositories/counter_respository.dart';
import 'package:flutter_architecture/counter_module/application/use_cases/get_counter.dart';
import 'package:flutter_architecture/counter_module/domain/entities/counter.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

@GenerateNiceMocks([MockSpec<ICounterRepository>()])
import 'get_counter_test.mocks.dart';

void main() {
  test('should decrement counter correctly', () async {
    // Arrange
    final repository = MockICounterRepository();
    final Counter counter = Counter(value: 0);
    when(repository.get()).thenAnswer((_) async => counter);
    final useCase = GetCounter(repository);

    // Act
    final response = await useCase.call();

    // Assert
    expect(response.value, 0);
  });
}
