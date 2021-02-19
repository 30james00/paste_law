import 'package:flutter/material.dart';
import 'package:paste_law/screens/home_screen/components/home_form.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Paste Law'),
      ),
      body: Container(
        child: HomeForm(),
      ),
    );
  }
}
