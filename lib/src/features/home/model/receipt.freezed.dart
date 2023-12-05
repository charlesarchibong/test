// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'receipt.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Receipt {
  String get productName => throw _privateConstructorUsedError;
  String get receiptNumber => throw _privateConstructorUsedError;
  String get leavingLocation => throw _privateConstructorUsedError;
  String get arrivalLocation => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ReceiptCopyWith<Receipt> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReceiptCopyWith<$Res> {
  factory $ReceiptCopyWith(Receipt value, $Res Function(Receipt) then) =
      _$ReceiptCopyWithImpl<$Res, Receipt>;
  @useResult
  $Res call(
      {String productName,
      String receiptNumber,
      String leavingLocation,
      String arrivalLocation});
}

/// @nodoc
class _$ReceiptCopyWithImpl<$Res, $Val extends Receipt>
    implements $ReceiptCopyWith<$Res> {
  _$ReceiptCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productName = null,
    Object? receiptNumber = null,
    Object? leavingLocation = null,
    Object? arrivalLocation = null,
  }) {
    return _then(_value.copyWith(
      productName: null == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String,
      receiptNumber: null == receiptNumber
          ? _value.receiptNumber
          : receiptNumber // ignore: cast_nullable_to_non_nullable
              as String,
      leavingLocation: null == leavingLocation
          ? _value.leavingLocation
          : leavingLocation // ignore: cast_nullable_to_non_nullable
              as String,
      arrivalLocation: null == arrivalLocation
          ? _value.arrivalLocation
          : arrivalLocation // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReceiptImplCopyWith<$Res> implements $ReceiptCopyWith<$Res> {
  factory _$$ReceiptImplCopyWith(
          _$ReceiptImpl value, $Res Function(_$ReceiptImpl) then) =
      __$$ReceiptImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String productName,
      String receiptNumber,
      String leavingLocation,
      String arrivalLocation});
}

/// @nodoc
class __$$ReceiptImplCopyWithImpl<$Res>
    extends _$ReceiptCopyWithImpl<$Res, _$ReceiptImpl>
    implements _$$ReceiptImplCopyWith<$Res> {
  __$$ReceiptImplCopyWithImpl(
      _$ReceiptImpl _value, $Res Function(_$ReceiptImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productName = null,
    Object? receiptNumber = null,
    Object? leavingLocation = null,
    Object? arrivalLocation = null,
  }) {
    return _then(_$ReceiptImpl(
      productName: null == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String,
      receiptNumber: null == receiptNumber
          ? _value.receiptNumber
          : receiptNumber // ignore: cast_nullable_to_non_nullable
              as String,
      leavingLocation: null == leavingLocation
          ? _value.leavingLocation
          : leavingLocation // ignore: cast_nullable_to_non_nullable
              as String,
      arrivalLocation: null == arrivalLocation
          ? _value.arrivalLocation
          : arrivalLocation // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ReceiptImpl implements _Receipt {
  const _$ReceiptImpl(
      {required this.productName,
      required this.receiptNumber,
      required this.leavingLocation,
      required this.arrivalLocation});

  @override
  final String productName;
  @override
  final String receiptNumber;
  @override
  final String leavingLocation;
  @override
  final String arrivalLocation;

  @override
  String toString() {
    return 'Receipt(productName: $productName, receiptNumber: $receiptNumber, leavingLocation: $leavingLocation, arrivalLocation: $arrivalLocation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReceiptImpl &&
            (identical(other.productName, productName) ||
                other.productName == productName) &&
            (identical(other.receiptNumber, receiptNumber) ||
                other.receiptNumber == receiptNumber) &&
            (identical(other.leavingLocation, leavingLocation) ||
                other.leavingLocation == leavingLocation) &&
            (identical(other.arrivalLocation, arrivalLocation) ||
                other.arrivalLocation == arrivalLocation));
  }

  @override
  int get hashCode => Object.hash(runtimeType, productName, receiptNumber,
      leavingLocation, arrivalLocation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReceiptImplCopyWith<_$ReceiptImpl> get copyWith =>
      __$$ReceiptImplCopyWithImpl<_$ReceiptImpl>(this, _$identity);
}

abstract class _Receipt implements Receipt {
  const factory _Receipt(
      {required final String productName,
      required final String receiptNumber,
      required final String leavingLocation,
      required final String arrivalLocation}) = _$ReceiptImpl;

  @override
  String get productName;
  @override
  String get receiptNumber;
  @override
  String get leavingLocation;
  @override
  String get arrivalLocation;
  @override
  @JsonKey(ignore: true)
  _$$ReceiptImplCopyWith<_$ReceiptImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
