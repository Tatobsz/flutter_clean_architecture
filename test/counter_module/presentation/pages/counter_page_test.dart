import 'package:flutter/material.dart';
import 'package:flutter_architecture/counter_module/presentation/pages/counter_page.dart';
import 'package:flutter_architecture/injector.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Counter Page', () {
    setUp(() {
      Injector.setup();
    });

    tearDown(() => Injector.container.clear());

    testWidgets('should increment counter when increment button is pressed',
        (WidgetTester tester) async {
      // Arrange
      await tester.pumpWidget(
        const MaterialApp(
          home: CounterPage(),
        ),
      );

      expect(find.text('0'), findsOneWidget);

      // Act
      await tester.tap(find.byIcon(Icons.add));
      await tester.pump();

      // Assert
      expect(find.text('1'), findsOneWidget);
    });

    testWidgets('should decrement counter when decrement button is pressed',
        (WidgetTester tester) async {
      // Arrange
      await tester.pumpWidget(
        const MaterialApp(
          home: CounterPage(),
        ),
      );

      expect(find.text('0'), findsOneWidget);

      // Act
      await tester.tap(find.byIcon(Icons.remove));
      await tester.pump();

      // Assert
      expect(find.text('-1'), findsOneWidget);
    });
  });
}
