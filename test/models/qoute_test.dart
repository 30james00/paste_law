import 'package:flutter_test/flutter_test.dart';
import 'package:paste_law/models/quote.dart';

void main() {
  test('create empty quote String', () {
    final quote = Quote(
      source: '',
      art: '',
      par: '',
      ust: '',
      pkt: '',
    );
    String a = quote.toString();
    expect(a, '');
  });

  test('create full quote String', () {
    final quote = Quote(
      source: 'kk',
      art: '215',
      par: '1',
      ust: '2',
      pkt: '3',
    );
    String a = quote.toString();
    expect(a, 'k.k. art. 215 \u00A7 1 ust. 2 pkt 3');
  });

  test('create partial quote String', () {
    var quote = Quote(
      source: '',
      art: '215',
      par: '1',
      ust: '2',
      pkt: '3',
    );
    String a = quote.toString();
    expect(a, 'art. 215 \u00A7 1 ust. 2 pkt 3');

    quote = Quote(
      source: 'kk',
      art: '215',
      par: '',
      ust: '2',
      pkt: '3',
    );
    a = quote.toString();
    expect(a, 'k.k. art. 215 ust. 2 pkt 3');

    quote = Quote(
      source: 'kk',
      art: '215',
      par: '1',
      ust: '',
      pkt: '3',
    );
    a = quote.toString();
    expect(a, 'k.k. art. 215 \u00A7 1 pkt 3');

    quote = Quote(
      source: 'kk',
      art: '215',
      par: '1',
      ust: '2',
      pkt: '',
    );
    a = quote.toString();
    expect(a, 'k.k. art. 215 \u00A7 1 ust. 2');
  });
}
