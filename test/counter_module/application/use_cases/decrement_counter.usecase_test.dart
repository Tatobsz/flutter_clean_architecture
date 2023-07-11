import 'package:flutter_architecture/counter_module/application/ports/repositories/counter_respository.dart';
import 'package:flutter_architecture/counter_module/application/use_cases/decrement_counter.usecase.dart';
import 'package:flutter_architecture/counter_module/domain/entities/counter.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

@GenerateNiceMocks([MockSpec<ICounterRepository>()])
import 'decrement_counter.usecase_test.mocks.dart';

void main() {
  test('should decrement counter correctly', () async {
    // Arrange
    final repository = MockICounterRepository();
    final useCase = DecrementCounterUseCase(repository);
    final counter = Counter(value: 0);

    // Act
    final response = await useCase.call(counter);

    // Assert
    verify(repository.save(counter)).called(1);
    expect(response.value, -1);
  });
}
