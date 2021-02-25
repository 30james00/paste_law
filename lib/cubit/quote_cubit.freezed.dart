// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'quote_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$QuoteStateTearOff {
  const _$QuoteStateTearOff();

// ignore: unused_element
  QuoteInitial inital() {
    return const QuoteInitial();
  }

// ignore: unused_element
  QuoteCreated created(String quote) {
    return QuoteCreated(
      quote,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $QuoteState = _$QuoteStateTearOff();

/// @nodoc
mixin _$QuoteState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult inital(),
    @required TResult created(String quote),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult inital(),
    TResult created(String quote),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult inital(QuoteInitial value),
    @required TResult created(QuoteCreated value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult inital(QuoteInitial value),
    TResult created(QuoteCreated value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $QuoteStateCopyWith<$Res> {
  factory $QuoteStateCopyWith(
          QuoteState value, $Res Function(QuoteState) then) =
      _$QuoteStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$QuoteStateCopyWithImpl<$Res> implements $QuoteStateCopyWith<$Res> {
  _$QuoteStateCopyWithImpl(this._value, this._then);

  final QuoteState _value;
  // ignore: unused_field
  final $Res Function(QuoteState) _then;
}

/// @nodoc
abstract class $QuoteInitialCopyWith<$Res> {
  factory $QuoteInitialCopyWith(
          QuoteInitial value, $Res Function(QuoteInitial) then) =
      _$QuoteInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$QuoteInitialCopyWithImpl<$Res> extends _$QuoteStateCopyWithImpl<$Res>
    implements $QuoteInitialCopyWith<$Res> {
  _$QuoteInitialCopyWithImpl(
      QuoteInitial _value, $Res Function(QuoteInitial) _then)
      : super(_value, (v) => _then(v as QuoteInitial));

  @override
  QuoteInitial get _value => super._value as QuoteInitial;
}

/// @nodoc
class _$QuoteInitial with DiagnosticableTreeMixin implements QuoteInitial {
  const _$QuoteInitial();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QuoteState.inital()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'QuoteState.inital'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is QuoteInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult inital(),
    @required TResult created(String quote),
  }) {
    assert(inital != null);
    assert(created != null);
    return inital();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult inital(),
    TResult created(String quote),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (inital != null) {
      return inital();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult inital(QuoteInitial value),
    @required TResult created(QuoteCreated value),
  }) {
    assert(inital != null);
    assert(created != null);
    return inital(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult inital(QuoteInitial value),
    TResult created(QuoteCreated value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (inital != null) {
      return inital(this);
    }
    return orElse();
  }
}

abstract class QuoteInitial implements QuoteState {
  const factory QuoteInitial() = _$QuoteInitial;
}

/// @nodoc
abstract class $QuoteCreatedCopyWith<$Res> {
  factory $QuoteCreatedCopyWith(
          QuoteCreated value, $Res Function(QuoteCreated) then) =
      _$QuoteCreatedCopyWithImpl<$Res>;
  $Res call({String quote});
}

/// @nodoc
class _$QuoteCreatedCopyWithImpl<$Res> extends _$QuoteStateCopyWithImpl<$Res>
    implements $QuoteCreatedCopyWith<$Res> {
  _$QuoteCreatedCopyWithImpl(
      QuoteCreated _value, $Res Function(QuoteCreated) _then)
      : super(_value, (v) => _then(v as QuoteCreated));

  @override
  QuoteCreated get _value => super._value as QuoteCreated;

  @override
  $Res call({
    Object quote = freezed,
  }) {
    return _then(QuoteCreated(
      quote == freezed ? _value.quote : quote as String,
    ));
  }
}

/// @nodoc
class _$QuoteCreated with DiagnosticableTreeMixin implements QuoteCreated {
  const _$QuoteCreated(this.quote) : assert(quote != null);

  @override
  final String quote;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QuoteState.created(quote: $quote)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'QuoteState.created'))
      ..add(DiagnosticsProperty('quote', quote));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is QuoteCreated &&
            (identical(other.quote, quote) ||
                const DeepCollectionEquality().equals(other.quote, quote)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(quote);

  @JsonKey(ignore: true)
  @override
  $QuoteCreatedCopyWith<QuoteCreated> get copyWith =>
      _$QuoteCreatedCopyWithImpl<QuoteCreated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult inital(),
    @required TResult created(String quote),
  }) {
    assert(inital != null);
    assert(created != null);
    return created(quote);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult inital(),
    TResult created(String quote),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (created != null) {
      return created(quote);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult inital(QuoteInitial value),
    @required TResult created(QuoteCreated value),
  }) {
    assert(inital != null);
    assert(created != null);
    return created(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult inital(QuoteInitial value),
    TResult created(QuoteCreated value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (created != null) {
      return created(this);
    }
    return orElse();
  }
}

abstract class QuoteCreated implements QuoteState {
  const factory QuoteCreated(String quote) = _$QuoteCreated;

  String get quote;
  @JsonKey(ignore: true)
  $QuoteCreatedCopyWith<QuoteCreated> get copyWith;
}
