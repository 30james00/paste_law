part of 'quote_cubit.dart';

@immutable
abstract class QuoteState {}

class QuoteInitial extends QuoteState {}

class QuoteCreated extends QuoteState {
  final String quote;
  QuoteCreated(this.quote);
}
