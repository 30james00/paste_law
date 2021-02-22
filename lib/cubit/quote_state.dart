part of 'quote_cubit.dart';

@freezed
abstract class QuoteState with _$QuoteState {
  const factory QuoteState.inital() = _QuoteInitial;
  const factory QuoteState.created(String quote) = _QuoteCreated;
}
