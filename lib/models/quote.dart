import 'package:flutter/cupertino.dart';

class Quote {
  final String source;
  final String art;
  final String par;
  final String ust;
  final String pkt;

  Quote({
    @required this.source,
    @required this.art,
    @required this.par,
    @required this.ust,
    @required this.pkt,
  });

  String toString() {
    String temp = '';

    //convert source to lowercase
    if (!source.isEmpty) {
      final a = source.toLowerCase();
      //divide source by dots
      for (var i = 0; i < a.length; i++) {
        temp += a[i] + '.';
      }
    }
    //add other symbols
    temp = addNext('art.', art, temp);
    temp = addNext('\u00A7', par, temp);
    temp = addNext('ust.', ust, temp);
    temp = addNext('pkt', pkt, temp);

    return temp;
  }

  String addNext(String label, String content, String current) {
    if (!content.isEmpty) {
      if (!current.isEmpty) current += ' ';
      current += '${label} ${content}';
    }
    return current;
  }
}
