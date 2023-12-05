// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_receipt_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchReceiptState {
  List<Receipt>? get results => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Receipt>? results) loading,
    required TResult Function(List<Receipt> results) loaded,
    required TResult Function(List<Receipt>? results) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Receipt>? results)? loading,
    TResult? Function(List<Receipt> results)? loaded,
    TResult? Function(List<Receipt>? results)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Receipt>? results)? loading,
    TResult Function(List<Receipt> results)? loaded,
    TResult Function(List<Receipt>? results)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingSearchReceiptState value) loading,
    required TResult Function(LoadedSearchReceiptState value) loaded,
    required TResult Function(InitialSearchReceiptState value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingSearchReceiptState value)? loading,
    TResult? Function(LoadedSearchReceiptState value)? loaded,
    TResult? Function(InitialSearchReceiptState value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingSearchReceiptState value)? loading,
    TResult Function(LoadedSearchReceiptState value)? loaded,
    TResult Function(InitialSearchReceiptState value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchReceiptStateCopyWith<SearchReceiptState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchReceiptStateCopyWith<$Res> {
  factory $SearchReceiptStateCopyWith(
          SearchReceiptState value, $Res Function(SearchReceiptState) then) =
      _$SearchReceiptStateCopyWithImpl<$Res, SearchReceiptState>;
  @useResult
  $Res call({List<Receipt> results});
}

/// @nodoc
class _$SearchReceiptStateCopyWithImpl<$Res, $Val extends SearchReceiptState>
    implements $SearchReceiptStateCopyWith<$Res> {
  _$SearchReceiptStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = null,
  }) {
    return _then(_value.copyWith(
      results: null == results
          ? _value.results!
          : results // ignore: cast_nullable_to_non_nullable
              as List<Receipt>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoadingSearchReceiptStateImplCopyWith<$Res>
    implements $SearchReceiptStateCopyWith<$Res> {
  factory _$$LoadingSearchReceiptStateImplCopyWith(
          _$LoadingSearchReceiptStateImpl value,
          $Res Function(_$LoadingSearchReceiptStateImpl) then) =
      __$$LoadingSearchReceiptStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Receipt>? results});
}

/// @nodoc
class __$$LoadingSearchReceiptStateImplCopyWithImpl<$Res>
    extends _$SearchReceiptStateCopyWithImpl<$Res,
        _$LoadingSearchReceiptStateImpl>
    implements _$$LoadingSearchReceiptStateImplCopyWith<$Res> {
  __$$LoadingSearchReceiptStateImplCopyWithImpl(
      _$LoadingSearchReceiptStateImpl _value,
      $Res Function(_$LoadingSearchReceiptStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = freezed,
  }) {
    return _then(_$LoadingSearchReceiptStateImpl(
      results: freezed == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Receipt>?,
    ));
  }
}

/// @nodoc

class _$LoadingSearchReceiptStateImpl extends LoadingSearchReceiptState {
  const _$LoadingSearchReceiptStateImpl({final List<Receipt>? results})
      : _results = results,
        super._();

  final List<Receipt>? _results;
  @override
  List<Receipt>? get results {
    final value = _results;
    if (value == null) return null;
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SearchReceiptState.loading(results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingSearchReceiptStateImpl &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingSearchReceiptStateImplCopyWith<_$LoadingSearchReceiptStateImpl>
      get copyWith => __$$LoadingSearchReceiptStateImplCopyWithImpl<
          _$LoadingSearchReceiptStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Receipt>? results) loading,
    required TResult Function(List<Receipt> results) loaded,
    required TResult Function(List<Receipt>? results) initial,
  }) {
    return loading(results);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Receipt>? results)? loading,
    TResult? Function(List<Receipt> results)? loaded,
    TResult? Function(List<Receipt>? results)? initial,
  }) {
    return loading?.call(results);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Receipt>? results)? loading,
    TResult Function(List<Receipt> results)? loaded,
    TResult Function(List<Receipt>? results)? initial,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(results);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingSearchReceiptState value) loading,
    required TResult Function(LoadedSearchReceiptState value) loaded,
    required TResult Function(InitialSearchReceiptState value) initial,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingSearchReceiptState value)? loading,
    TResult? Function(LoadedSearchReceiptState value)? loaded,
    TResult? Function(InitialSearchReceiptState value)? initial,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingSearchReceiptState value)? loading,
    TResult Function(LoadedSearchReceiptState value)? loaded,
    TResult Function(InitialSearchReceiptState value)? initial,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingSearchReceiptState extends SearchReceiptState {
  const factory LoadingSearchReceiptState({final List<Receipt>? results}) =
      _$LoadingSearchReceiptStateImpl;
  const LoadingSearchReceiptState._() : super._();

  @override
  List<Receipt>? get results;
  @override
  @JsonKey(ignore: true)
  _$$LoadingSearchReceiptStateImplCopyWith<_$LoadingSearchReceiptStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadedSearchReceiptStateImplCopyWith<$Res>
    implements $SearchReceiptStateCopyWith<$Res> {
  factory _$$LoadedSearchReceiptStateImplCopyWith(
          _$LoadedSearchReceiptStateImpl value,
          $Res Function(_$LoadedSearchReceiptStateImpl) then) =
      __$$LoadedSearchReceiptStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Receipt> results});
}

/// @nodoc
class __$$LoadedSearchReceiptStateImplCopyWithImpl<$Res>
    extends _$SearchReceiptStateCopyWithImpl<$Res,
        _$LoadedSearchReceiptStateImpl>
    implements _$$LoadedSearchReceiptStateImplCopyWith<$Res> {
  __$$LoadedSearchReceiptStateImplCopyWithImpl(
      _$LoadedSearchReceiptStateImpl _value,
      $Res Function(_$LoadedSearchReceiptStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = null,
  }) {
    return _then(_$LoadedSearchReceiptStateImpl(
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Receipt>,
    ));
  }
}

/// @nodoc

class _$LoadedSearchReceiptStateImpl extends LoadedSearchReceiptState {
  const _$LoadedSearchReceiptStateImpl({required final List<Receipt> results})
      : _results = results,
        super._();

  final List<Receipt> _results;
  @override
  List<Receipt> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'SearchReceiptState.loaded(results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedSearchReceiptStateImpl &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedSearchReceiptStateImplCopyWith<_$LoadedSearchReceiptStateImpl>
      get copyWith => __$$LoadedSearchReceiptStateImplCopyWithImpl<
          _$LoadedSearchReceiptStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Receipt>? results) loading,
    required TResult Function(List<Receipt> results) loaded,
    required TResult Function(List<Receipt>? results) initial,
  }) {
    return loaded(results);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Receipt>? results)? loading,
    TResult? Function(List<Receipt> results)? loaded,
    TResult? Function(List<Receipt>? results)? initial,
  }) {
    return loaded?.call(results);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Receipt>? results)? loading,
    TResult Function(List<Receipt> results)? loaded,
    TResult Function(List<Receipt>? results)? initial,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(results);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingSearchReceiptState value) loading,
    required TResult Function(LoadedSearchReceiptState value) loaded,
    required TResult Function(InitialSearchReceiptState value) initial,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingSearchReceiptState value)? loading,
    TResult? Function(LoadedSearchReceiptState value)? loaded,
    TResult? Function(InitialSearchReceiptState value)? initial,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingSearchReceiptState value)? loading,
    TResult Function(LoadedSearchReceiptState value)? loaded,
    TResult Function(InitialSearchReceiptState value)? initial,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class LoadedSearchReceiptState extends SearchReceiptState {
  const factory LoadedSearchReceiptState(
      {required final List<Receipt> results}) = _$LoadedSearchReceiptStateImpl;
  const LoadedSearchReceiptState._() : super._();

  @override
  List<Receipt> get results;
  @override
  @JsonKey(ignore: true)
  _$$LoadedSearchReceiptStateImplCopyWith<_$LoadedSearchReceiptStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InitialSearchReceiptStateImplCopyWith<$Res>
    implements $SearchReceiptStateCopyWith<$Res> {
  factory _$$InitialSearchReceiptStateImplCopyWith(
          _$InitialSearchReceiptStateImpl value,
          $Res Function(_$InitialSearchReceiptStateImpl) then) =
      __$$InitialSearchReceiptStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Receipt>? results});
}

/// @nodoc
class __$$InitialSearchReceiptStateImplCopyWithImpl<$Res>
    extends _$SearchReceiptStateCopyWithImpl<$Res,
        _$InitialSearchReceiptStateImpl>
    implements _$$InitialSearchReceiptStateImplCopyWith<$Res> {
  __$$InitialSearchReceiptStateImplCopyWithImpl(
      _$InitialSearchReceiptStateImpl _value,
      $Res Function(_$InitialSearchReceiptStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = freezed,
  }) {
    return _then(_$InitialSearchReceiptStateImpl(
      results: freezed == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Receipt>?,
    ));
  }
}

/// @nodoc

class _$InitialSearchReceiptStateImpl extends InitialSearchReceiptState {
  const _$InitialSearchReceiptStateImpl({final List<Receipt>? results})
      : _results = results,
        super._();

  final List<Receipt>? _results;
  @override
  List<Receipt>? get results {
    final value = _results;
    if (value == null) return null;
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SearchReceiptState.initial(results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialSearchReceiptStateImpl &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialSearchReceiptStateImplCopyWith<_$InitialSearchReceiptStateImpl>
      get copyWith => __$$InitialSearchReceiptStateImplCopyWithImpl<
          _$InitialSearchReceiptStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Receipt>? results) loading,
    required TResult Function(List<Receipt> results) loaded,
    required TResult Function(List<Receipt>? results) initial,
  }) {
    return initial(results);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Receipt>? results)? loading,
    TResult? Function(List<Receipt> results)? loaded,
    TResult? Function(List<Receipt>? results)? initial,
  }) {
    return initial?.call(results);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Receipt>? results)? loading,
    TResult Function(List<Receipt> results)? loaded,
    TResult Function(List<Receipt>? results)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(results);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingSearchReceiptState value) loading,
    required TResult Function(LoadedSearchReceiptState value) loaded,
    required TResult Function(InitialSearchReceiptState value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingSearchReceiptState value)? loading,
    TResult? Function(LoadedSearchReceiptState value)? loaded,
    TResult? Function(InitialSearchReceiptState value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingSearchReceiptState value)? loading,
    TResult Function(LoadedSearchReceiptState value)? loaded,
    TResult Function(InitialSearchReceiptState value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InitialSearchReceiptState extends SearchReceiptState {
  const factory InitialSearchReceiptState({final List<Receipt>? results}) =
      _$InitialSearchReceiptStateImpl;
  const InitialSearchReceiptState._() : super._();

  @override
  List<Receipt>? get results;
  @override
  @JsonKey(ignore: true)
  _$$InitialSearchReceiptStateImplCopyWith<_$InitialSearchReceiptStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
