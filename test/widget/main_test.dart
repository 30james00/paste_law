import 'package:flutter_test/flutter_test.dart';

import 'package:paste_law/main.dart';
import 'package:paste_law/screens/home_screen/home_screen.dart';

void main() {
  testWidgets('Whole UI', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp());

    //find HomeScreen
    expect(find.byType(HomeScreen), findsOneWidget);
  });
}
