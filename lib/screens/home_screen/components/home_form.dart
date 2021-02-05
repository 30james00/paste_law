import 'package:flutter/material.dart';

class HomeForm extends StatefulWidget {
  @override
  _HomeFormState createState() => _HomeFormState();
}

class _HomeFormState extends State<HomeForm> {
  //global key form Form identification
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(
                child: TextFormField(
              decoration: InputDecoration(labelText: 'Akt prawny'),
            )),
            Flexible(
                child: TextFormField(
              decoration: InputDecoration(labelText: 'art.'),
            )),
            Flexible(
                child: TextFormField(
              decoration: InputDecoration(labelText: '\u00A7'),
            )),
            Flexible(
                child: TextFormField(
              decoration: InputDecoration(labelText: 'ust.'),
            )),
            Flexible(
                child: TextFormField(
              decoration: InputDecoration(labelText: 'pkt'),
            )),
          ],
        ),
      ),
    );
  }
}
