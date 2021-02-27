import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:paste_law/cubit/quote_cubit.dart';
import 'package:paste_law/screens/home_screen/components/home_form.dart';

import 'package:paste_law/screens/home_screen/home_screen.dart';

void main() {
  testWidgets('All widgets rendered', (WidgetTester tester) async {
    Widget testWidget = MediaQuery(
      data: MediaQueryData(),
      child: BlocProvider(
        create: (context) => QuoteCubit(),
        child: MaterialApp(
          home: new HomeScreen(),
        ),
      ),
    );

    await tester.pumpWidget(testWidget);

    expect(find.byType(Scaffold), findsOneWidget);
    expect(find.byType(AppBar), findsOneWidget);
    expect(find.byType(HomeForm), findsOneWidget);
    expect(find.text('Paste Law'), findsOneWidget);
    expect(find.text('Kopiuj'), findsOneWidget);
    expect(find.text('Wprowadź text'), findsOneWidget);

    //form elements
    expect(find.byType(Form), findsOneWidget);
    expect(find.byType(TextFormField), findsNWidgets(5));

    //buttons
    expect(find.byType(ElevatedButton), findsNWidgets(1));


    //form decorations
    expect(find.text('Akt prawny'), findsOneWidget);
    expect(find.text('art.'), findsOneWidget);
    expect(find.text('\u00A7'), findsOneWidget);
    expect(find.text('ust.'), findsOneWidget);
    expect(find.text('pkt'), findsOneWidget);
  });
}
