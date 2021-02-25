import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'quote_state.dart';
part 'quote_cubit.freezed.dart';

class QuoteCubit extends Cubit<QuoteState> {
  QuoteCubit() : super(QuoteState.inital());

  setQuote(String quote) {
    emit(QuoteState.created(quote));
  }
}
