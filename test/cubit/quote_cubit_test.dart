import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:paste_law/cubit/quote_cubit.dart';

void main() {
  group('QuoteState test', () {
    QuoteCubit quoteCubit;

    setUp(() {
      quoteCubit = QuoteCubit();
    });

    test('initial quote state', () {
      expect(quoteCubit.state, QuoteState.inital());
    });

    blocTest(
      'change QuoteState',
      build: () => quoteCubit,
      act: (cubit) => cubit.setQuote("test"),
      expect: [QuoteState.created("test")],
    );
  });
}
