import 'package:flutter_architecture/counter_module/application/ports/repositories/counter_respository.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:flutter_architecture/counter_module/application/use_cases/increment_counter.usecase.dart';
import 'package:flutter_architecture/counter_module/domain/entities/counter.dart';
import 'package:flutter_test/flutter_test.dart';

@GenerateNiceMocks([MockSpec<ICounterRepository>()])
import 'increment_counter.usecase_test.mocks.dart';

void main() {
  test('should increment counter correctly', () async {
    // Arrange
    final repository = MockICounterRepository();
    final useCase = IncrementCounterUseCase(repository);
    final counter = Counter(value: 0);

    // Act
    final response = await useCase.call(counter);

    // Assert
    verify(repository.save(counter)).called(1);
    expect(response.value, 1);
  });
}
