import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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

  Quote _quote = Quote();

  @override
  Widget build(BuildContext context) {
    return RawKeyboardListener(
      focusNode: FocusNode(),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      border: const OutlineInputBorder(),
                      hintText: 'Akt prawny',
                    ),
                    onSaved: (value) => _quote = Quote(
                      source: value,
                      art: _quote.art,
                      par: _quote.par,
                      ust: _quote.ust,
                      pkt: _quote.pkt,
                    ),
                  ),
                ),
              ),
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      border: const OutlineInputBorder(),
                      //currently prefix can't be always visible without workaround
                      //https://github.com/flutter/flutter/issues/19488
                      hintText: 'art.',
                    ),
                    onSaved: (value) => _quote = Quote(
                      source: _quote.source,
                      art: value,
                      par: _quote.par,
                      ust: _quote.ust,
                      pkt: _quote.pkt,
                    ),
                  ),
                ),
              ),
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      border: const OutlineInputBorder(),
                      hintText: '\u00A7',
                    ),
                    onSaved: (value) => _quote = Quote(
                      source: _quote.source,
                      art: _quote.art,
                      par: value,
                      ust: _quote.ust,
                      pkt: _quote.pkt,
                    ),
                  ),
                ),
              ),
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      border: const OutlineInputBorder(),
                      hintText: 'ust.',
                    ),
                    onSaved: (value) => _quote = Quote(
                      source: _quote.source,
                      art: _quote.art,
                      par: _quote.par,
                      ust: value,
                      pkt: _quote.pkt,
                    ),
                  ),
                ),
              ),
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      border: const OutlineInputBorder(),
                      hintText: 'pkt',
                    ),
                    onSaved: (value) => _quote = Quote(
                      source: _quote.source,
                      art: _quote.art,
                      par: _quote.par,
                      ust: _quote.ust,
                      pkt: value,
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                    child: ElevatedButton(
                      onPressed: submitQuote,
                      child: Text("Kopiuj"),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      //copy Quote on Enter pressed
      onKey: (RawKeyEvent event) {
        if (event.data.physicalKey == PhysicalKeyboardKey.enter) submitQuote();
      },
    );
  }

  void submitQuote() {
    _formKey.currentState.save();
    final text = _quote.toString();
    final quoteCubit = context.read<QuoteCubit>();
    quoteCubit.setQuote(text);
    Clipboard.setData(ClipboardData(text: text));
  }
}
