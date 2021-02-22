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
  _QuoteInitial inital() {
    return const _QuoteInitial();
  }

// ignore: unused_element
  _QuoteCreated created(String quote) {
    return _QuoteCreated(
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
    @required TResult inital(_QuoteInitial value),
    @required TResult created(_QuoteCreated value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult inital(_QuoteInitial value),
    TResult created(_QuoteCreated value),
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
abstract class _$QuoteInitialCopyWith<$Res> {
  factory _$QuoteInitialCopyWith(
          _QuoteInitial value, $Res Function(_QuoteInitial) then) =
      __$QuoteInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$QuoteInitialCopyWithImpl<$Res> extends _$QuoteStateCopyWithImpl<$Res>
    implements _$QuoteInitialCopyWith<$Res> {
  __$QuoteInitialCopyWithImpl(
      _QuoteInitial _value, $Res Function(_QuoteInitial) _then)
      : super(_value, (v) => _then(v as _QuoteInitial));

  @override
  _QuoteInitial get _value => super._value as _QuoteInitial;
}

/// @nodoc
class _$_QuoteInitial with DiagnosticableTreeMixin implements _QuoteInitial {
  const _$_QuoteInitial();

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
    return identical(this, other) || (other is _QuoteInitial);
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
    @required TResult inital(_QuoteInitial value),
    @required TResult created(_QuoteCreated value),
  }) {
    assert(inital != null);
    assert(created != null);
    return inital(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult inital(_QuoteInitial value),
    TResult created(_QuoteCreated value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (inital != null) {
      return inital(this);
    }
    return orElse();
  }
}

abstract class _QuoteInitial implements QuoteState {
  const factory _QuoteInitial() = _$_QuoteInitial;
}

/// @nodoc
abstract class _$QuoteCreatedCopyWith<$Res> {
  factory _$QuoteCreatedCopyWith(
          _QuoteCreated value, $Res Function(_QuoteCreated) then) =
      __$QuoteCreatedCopyWithImpl<$Res>;
  $Res call({String quote});
}

/// @nodoc
class __$QuoteCreatedCopyWithImpl<$Res> extends _$QuoteStateCopyWithImpl<$Res>
    implements _$QuoteCreatedCopyWith<$Res> {
  __$QuoteCreatedCopyWithImpl(
      _QuoteCreated _value, $Res Function(_QuoteCreated) _then)
      : super(_value, (v) => _then(v as _QuoteCreated));

  @override
  _QuoteCreated get _value => super._value as _QuoteCreated;

  @override
  $Res call({
    Object quote = freezed,
  }) {
    return _then(_QuoteCreated(
      quote == freezed ? _value.quote : quote as String,
    ));
  }
}

/// @nodoc
class _$_QuoteCreated with DiagnosticableTreeMixin implements _QuoteCreated {
  const _$_QuoteCreated(this.quote) : assert(quote != null);

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
        (other is _QuoteCreated &&
            (identical(other.quote, quote) ||
                const DeepCollectionEquality().equals(other.quote, quote)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(quote);

  @JsonKey(ignore: true)
  @override
  _$QuoteCreatedCopyWith<_QuoteCreated> get copyWith =>
      __$QuoteCreatedCopyWithImpl<_QuoteCreated>(this, _$identity);

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
    @required TResult inital(_QuoteInitial value),
    @required TResult created(_QuoteCreated value),
  }) {
    assert(inital != null);
    assert(created != null);
    return created(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult inital(_QuoteInitial value),
    TResult created(_QuoteCreated value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (created != null) {
      return created(this);
    }
    return orElse();
  }
}

abstract class _QuoteCreated implements QuoteState {
  const factory _QuoteCreated(String quote) = _$_QuoteCreated;

  String get quote;
  @JsonKey(ignore: true)
  _$QuoteCreatedCopyWith<_QuoteCreated> get copyWith;
}
