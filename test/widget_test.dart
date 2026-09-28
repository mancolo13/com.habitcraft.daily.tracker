import 'package:flutter_test/flutter_test.dart';
import 'package:app11/main.dart';

void main() {
  testWidgets('HabitCraft renders app correctly', (WidgetTester tester) async {
    await tester.pumpWidget(const HabitCraftApp());
    expect(find.byType(HabitCraftApp), findsOneWidget);
  });
}
