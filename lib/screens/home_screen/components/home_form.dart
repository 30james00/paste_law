import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:paste_law/cubit/quote_cubit.dart';
import 'package:paste_law/models/quote.dart';

class HomeForm extends StatefulWidget {
  @override
  _HomeFormState createState() => _HomeFormState();
}

class _HomeFormState extends State<HomeForm> {
  //global key form Form identification
  final _formKey = GlobalKey<FormState>();

  Quote _quote = Quote(
    source: '',
    art: '',
    ust: '',
    par: '',
    pkt: '',
  );

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          Flexible(
            child: TextFormField(
              decoration: InputDecoration(labelText: 'Akt prawny'),
              onSaved: (value) => _quote = Quote(
                source: value,
                art: _quote.art,
                par: _quote.par,
                ust: _quote.ust,
                pkt: _quote.pkt,
              ),
            ),
          ),
          Flexible(
            child: TextFormField(
              decoration: InputDecoration(labelText: 'art.'),
              onSaved: (value) => _quote = Quote(
                source: _quote.source,
                art: value,
                par: _quote.par,
                ust: _quote.ust,
                pkt: _quote.pkt,
              ),
            ),
          ),
          Flexible(
            child: TextFormField(
              decoration: InputDecoration(labelText: '\u00A7'),
              onSaved: (value) => _quote = Quote(
                source: _quote.source,
                art: _quote.art,
                par: value,
                ust: _quote.ust,
                pkt: _quote.pkt,
              ),
            ),
          ),
          Flexible(
            child: TextFormField(
              decoration: InputDecoration(labelText: 'ust.'),
              onSaved: (value) => _quote = Quote(
                source: _quote.source,
                art: _quote.art,
                par: _quote.par,
                ust: value,
                pkt: _quote.pkt,
              ),
            ),
          ),
          Flexible(
            child: TextFormField(
              decoration: InputDecoration(labelText: 'pkt'),
              onSaved: (value) => _quote = Quote(
                source: _quote.source,
                art: _quote.art,
                par: _quote.par,
                ust: _quote.ust,
                pkt: value,
              ),
            ),
          ),
          ElevatedButton(onPressed: submitQuote, child: Text("Kopiuj")),
        ],
      ),
    );
  }

  void submitQuote() {
    _formKey.currentState.save();
    final quoteCubit = context.read<QuoteCubit>();
    quoteCubit.setQuote(_quote.toString());
  }
}
