// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bank_account_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$BankAccountEntity {

 int get id; String get bankName; String get bankCode; String get accountNumber; String get accountHolder; bool get verified; DateTime? get verifiedAt;
/// Create a copy of BankAccountEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BankAccountEntityCopyWith<BankAccountEntity> get copyWith => _$BankAccountEntityCopyWithImpl<BankAccountEntity>(this as BankAccountEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BankAccountEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.bankName, bankName) || other.bankName == bankName)&&(identical(other.bankCode, bankCode) || other.bankCode == bankCode)&&(identical(other.accountNumber, accountNumber) || other.accountNumber == accountNumber)&&(identical(other.accountHolder, accountHolder) || other.accountHolder == accountHolder)&&(identical(other.verified, verified) || other.verified == verified)&&(identical(other.verifiedAt, verifiedAt) || other.verifiedAt == verifiedAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,bankName,bankCode,accountNumber,accountHolder,verified,verifiedAt);

@override
String toString() {
  return 'BankAccountEntity(id: $id, bankName: $bankName, bankCode: $bankCode, accountNumber: $accountNumber, accountHolder: $accountHolder, verified: $verified, verifiedAt: $verifiedAt)';
}


}

/// @nodoc
abstract mixin class $BankAccountEntityCopyWith<$Res>  {
  factory $BankAccountEntityCopyWith(BankAccountEntity value, $Res Function(BankAccountEntity) _then) = _$BankAccountEntityCopyWithImpl;
@useResult
$Res call({
 int id, String bankName, String bankCode, String accountNumber, String accountHolder, bool verified, DateTime? verifiedAt
});




}
/// @nodoc
class _$BankAccountEntityCopyWithImpl<$Res>
    implements $BankAccountEntityCopyWith<$Res> {
  _$BankAccountEntityCopyWithImpl(this._self, this._then);

  final BankAccountEntity _self;
  final $Res Function(BankAccountEntity) _then;

/// Create a copy of BankAccountEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? bankName = null,Object? bankCode = null,Object? accountNumber = null,Object? accountHolder = null,Object? verified = null,Object? verifiedAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,bankName: null == bankName ? _self.bankName : bankName // ignore: cast_nullable_to_non_nullable
as String,bankCode: null == bankCode ? _self.bankCode : bankCode // ignore: cast_nullable_to_non_nullable
as String,accountNumber: null == accountNumber ? _self.accountNumber : accountNumber // ignore: cast_nullable_to_non_nullable
as String,accountHolder: null == accountHolder ? _self.accountHolder : accountHolder // ignore: cast_nullable_to_non_nullable
as String,verified: null == verified ? _self.verified : verified // ignore: cast_nullable_to_non_nullable
as bool,verifiedAt: freezed == verifiedAt ? _self.verifiedAt : verifiedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [BankAccountEntity].
extension BankAccountEntityPatterns on BankAccountEntity {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BankAccountEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BankAccountEntity() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BankAccountEntity value)  $default,){
final _that = this;
switch (_that) {
case _BankAccountEntity():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BankAccountEntity value)?  $default,){
final _that = this;
switch (_that) {
case _BankAccountEntity() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String bankName,  String bankCode,  String accountNumber,  String accountHolder,  bool verified,  DateTime? verifiedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BankAccountEntity() when $default != null:
return $default(_that.id,_that.bankName,_that.bankCode,_that.accountNumber,_that.accountHolder,_that.verified,_that.verifiedAt);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String bankName,  String bankCode,  String accountNumber,  String accountHolder,  bool verified,  DateTime? verifiedAt)  $default,) {final _that = this;
switch (_that) {
case _BankAccountEntity():
return $default(_that.id,_that.bankName,_that.bankCode,_that.accountNumber,_that.accountHolder,_that.verified,_that.verifiedAt);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String bankName,  String bankCode,  String accountNumber,  String accountHolder,  bool verified,  DateTime? verifiedAt)?  $default,) {final _that = this;
switch (_that) {
case _BankAccountEntity() when $default != null:
return $default(_that.id,_that.bankName,_that.bankCode,_that.accountNumber,_that.accountHolder,_that.verified,_that.verifiedAt);case _:
  return null;

}
}

}

/// @nodoc


class _BankAccountEntity implements BankAccountEntity {
  const _BankAccountEntity({required this.id, required this.bankName, required this.bankCode, required this.accountNumber, required this.accountHolder, required this.verified, this.verifiedAt});
  

@override final  int id;
@override final  String bankName;
@override final  String bankCode;
@override final  String accountNumber;
@override final  String accountHolder;
@override final  bool verified;
@override final  DateTime? verifiedAt;

/// Create a copy of BankAccountEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BankAccountEntityCopyWith<_BankAccountEntity> get copyWith => __$BankAccountEntityCopyWithImpl<_BankAccountEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BankAccountEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.bankName, bankName) || other.bankName == bankName)&&(identical(other.bankCode, bankCode) || other.bankCode == bankCode)&&(identical(other.accountNumber, accountNumber) || other.accountNumber == accountNumber)&&(identical(other.accountHolder, accountHolder) || other.accountHolder == accountHolder)&&(identical(other.verified, verified) || other.verified == verified)&&(identical(other.verifiedAt, verifiedAt) || other.verifiedAt == verifiedAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,bankName,bankCode,accountNumber,accountHolder,verified,verifiedAt);

@override
String toString() {
  return 'BankAccountEntity(id: $id, bankName: $bankName, bankCode: $bankCode, accountNumber: $accountNumber, accountHolder: $accountHolder, verified: $verified, verifiedAt: $verifiedAt)';
}


}

/// @nodoc
abstract mixin class _$BankAccountEntityCopyWith<$Res> implements $BankAccountEntityCopyWith<$Res> {
  factory _$BankAccountEntityCopyWith(_BankAccountEntity value, $Res Function(_BankAccountEntity) _then) = __$BankAccountEntityCopyWithImpl;
@override @useResult
$Res call({
 int id, String bankName, String bankCode, String accountNumber, String accountHolder, bool verified, DateTime? verifiedAt
});




}
/// @nodoc
class __$BankAccountEntityCopyWithImpl<$Res>
    implements _$BankAccountEntityCopyWith<$Res> {
  __$BankAccountEntityCopyWithImpl(this._self, this._then);

  final _BankAccountEntity _self;
  final $Res Function(_BankAccountEntity) _then;

/// Create a copy of BankAccountEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? bankName = null,Object? bankCode = null,Object? accountNumber = null,Object? accountHolder = null,Object? verified = null,Object? verifiedAt = freezed,}) {
  return _then(_BankAccountEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,bankName: null == bankName ? _self.bankName : bankName // ignore: cast_nullable_to_non_nullable
as String,bankCode: null == bankCode ? _self.bankCode : bankCode // ignore: cast_nullable_to_non_nullable
as String,accountNumber: null == accountNumber ? _self.accountNumber : accountNumber // ignore: cast_nullable_to_non_nullable
as String,accountHolder: null == accountHolder ? _self.accountHolder : accountHolder // ignore: cast_nullable_to_non_nullable
as String,verified: null == verified ? _self.verified : verified // ignore: cast_nullable_to_non_nullable
as bool,verifiedAt: freezed == verifiedAt ? _self.verifiedAt : verifiedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
