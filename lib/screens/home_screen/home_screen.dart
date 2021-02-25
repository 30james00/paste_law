import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:paste_law/cubit/quote_cubit.dart';
import 'package:paste_law/screens/home_screen/components/home_form.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Paste Law'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Flexible(child: HomeForm()),
            BlocBuilder<QuoteCubit, QuoteState>(
              builder: (context, state) {
                if (state is QuoteCreated)
                  return Text(state.quote);
                else
                  return Text('Wprowadź text');
              },
            ),
          ],
        ),
      ),
    );
  }
}
