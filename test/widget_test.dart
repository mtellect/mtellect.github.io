import 'package:flutter_test/flutter_test.dart';
import 'package:my_portfolio/main.dart';

void main() {
  testWidgets('Smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(const MyPortfolio());
    expect(find.byType(MyPortfolio), findsOneWidget);
  });
}
