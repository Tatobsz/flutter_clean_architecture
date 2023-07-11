import 'package:flutter_architecture/counter_module/domain/entities/counter.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Should increment counter', () {
    // Arrange
    final counter = Counter(value: 0);

    // Act
    counter.increment();

    // Assert
    expect(counter.value, 1);
  });

  test('Should decrement counter', () {
    // Arrange
    final counter = Counter(value: 0);

    // Act
    counter.decrement();

    // Assert
    expect(counter.value, -1);
  });
}
