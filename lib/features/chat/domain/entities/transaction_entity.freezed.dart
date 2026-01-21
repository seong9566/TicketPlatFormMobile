// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TransactionEntity {

 int get transactionId; String get statusCode; String get statusName; int get amount; String? get paymentUrl; DateTime? get confirmedAt; String? get cancelReason;
/// Create a copy of TransactionEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TransactionEntityCopyWith<TransactionEntity> get copyWith => _$TransactionEntityCopyWithImpl<TransactionEntity>(this as TransactionEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TransactionEntity&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId)&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.statusName, statusName) || other.statusName == statusName)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.paymentUrl, paymentUrl) || other.paymentUrl == paymentUrl)&&(identical(other.confirmedAt, confirmedAt) || other.confirmedAt == confirmedAt)&&(identical(other.cancelReason, cancelReason) || other.cancelReason == cancelReason));
}


@override
int get hashCode => Object.hash(runtimeType,transactionId,statusCode,statusName,amount,paymentUrl,confirmedAt,cancelReason);

@override
String toString() {
  return 'TransactionEntity(transactionId: $transactionId, statusCode: $statusCode, statusName: $statusName, amount: $amount, paymentUrl: $paymentUrl, confirmedAt: $confirmedAt, cancelReason: $cancelReason)';
}


}

/// @nodoc
abstract mixin class $TransactionEntityCopyWith<$Res>  {
  factory $TransactionEntityCopyWith(TransactionEntity value, $Res Function(TransactionEntity) _then) = _$TransactionEntityCopyWithImpl;
@useResult
$Res call({
 int transactionId, String statusCode, String statusName, int amount, String? paymentUrl, DateTime? confirmedAt, String? cancelReason
});




}
/// @nodoc
class _$TransactionEntityCopyWithImpl<$Res>
    implements $TransactionEntityCopyWith<$Res> {
  _$TransactionEntityCopyWithImpl(this._self, this._then);

  final TransactionEntity _self;
  final $Res Function(TransactionEntity) _then;

/// Create a copy of TransactionEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? transactionId = null,Object? statusCode = null,Object? statusName = null,Object? amount = null,Object? paymentUrl = freezed,Object? confirmedAt = freezed,Object? cancelReason = freezed,}) {
  return _then(_self.copyWith(
transactionId: null == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as int,statusCode: null == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as String,statusName: null == statusName ? _self.statusName : statusName // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,paymentUrl: freezed == paymentUrl ? _self.paymentUrl : paymentUrl // ignore: cast_nullable_to_non_nullable
as String?,confirmedAt: freezed == confirmedAt ? _self.confirmedAt : confirmedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,cancelReason: freezed == cancelReason ? _self.cancelReason : cancelReason // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [TransactionEntity].
extension TransactionEntityPatterns on TransactionEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TransactionEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TransactionEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TransactionEntity value)  $default,){
final _that = this;
switch (_that) {
case _TransactionEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TransactionEntity value)?  $default,){
final _that = this;
switch (_that) {
case _TransactionEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int transactionId,  String statusCode,  String statusName,  int amount,  String? paymentUrl,  DateTime? confirmedAt,  String? cancelReason)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TransactionEntity() when $default != null:
return $default(_that.transactionId,_that.statusCode,_that.statusName,_that.amount,_that.paymentUrl,_that.confirmedAt,_that.cancelReason);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int transactionId,  String statusCode,  String statusName,  int amount,  String? paymentUrl,  DateTime? confirmedAt,  String? cancelReason)  $default,) {final _that = this;
switch (_that) {
case _TransactionEntity():
return $default(_that.transactionId,_that.statusCode,_that.statusName,_that.amount,_that.paymentUrl,_that.confirmedAt,_that.cancelReason);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int transactionId,  String statusCode,  String statusName,  int amount,  String? paymentUrl,  DateTime? confirmedAt,  String? cancelReason)?  $default,) {final _that = this;
switch (_that) {
case _TransactionEntity() when $default != null:
return $default(_that.transactionId,_that.statusCode,_that.statusName,_that.amount,_that.paymentUrl,_that.confirmedAt,_that.cancelReason);case _:
  return null;

}
}

}

/// @nodoc


class _TransactionEntity implements TransactionEntity {
  const _TransactionEntity({required this.transactionId, required this.statusCode, required this.statusName, required this.amount, this.paymentUrl, this.confirmedAt, this.cancelReason});
  

@override final  int transactionId;
@override final  String statusCode;
@override final  String statusName;
@override final  int amount;
@override final  String? paymentUrl;
@override final  DateTime? confirmedAt;
@override final  String? cancelReason;

/// Create a copy of TransactionEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TransactionEntityCopyWith<_TransactionEntity> get copyWith => __$TransactionEntityCopyWithImpl<_TransactionEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TransactionEntity&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId)&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.statusName, statusName) || other.statusName == statusName)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.paymentUrl, paymentUrl) || other.paymentUrl == paymentUrl)&&(identical(other.confirmedAt, confirmedAt) || other.confirmedAt == confirmedAt)&&(identical(other.cancelReason, cancelReason) || other.cancelReason == cancelReason));
}


@override
int get hashCode => Object.hash(runtimeType,transactionId,statusCode,statusName,amount,paymentUrl,confirmedAt,cancelReason);

@override
String toString() {
  return 'TransactionEntity(transactionId: $transactionId, statusCode: $statusCode, statusName: $statusName, amount: $amount, paymentUrl: $paymentUrl, confirmedAt: $confirmedAt, cancelReason: $cancelReason)';
}


}

/// @nodoc
abstract mixin class _$TransactionEntityCopyWith<$Res> implements $TransactionEntityCopyWith<$Res> {
  factory _$TransactionEntityCopyWith(_TransactionEntity value, $Res Function(_TransactionEntity) _then) = __$TransactionEntityCopyWithImpl;
@override @useResult
$Res call({
 int transactionId, String statusCode, String statusName, int amount, String? paymentUrl, DateTime? confirmedAt, String? cancelReason
});




}
/// @nodoc
class __$TransactionEntityCopyWithImpl<$Res>
    implements _$TransactionEntityCopyWith<$Res> {
  __$TransactionEntityCopyWithImpl(this._self, this._then);

  final _TransactionEntity _self;
  final $Res Function(_TransactionEntity) _then;

/// Create a copy of TransactionEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? transactionId = null,Object? statusCode = null,Object? statusName = null,Object? amount = null,Object? paymentUrl = freezed,Object? confirmedAt = freezed,Object? cancelReason = freezed,}) {
  return _then(_TransactionEntity(
transactionId: null == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as int,statusCode: null == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as String,statusName: null == statusName ? _self.statusName : statusName // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,paymentUrl: freezed == paymentUrl ? _self.paymentUrl : paymentUrl // ignore: cast_nullable_to_non_nullable
as String?,confirmedAt: freezed == confirmedAt ? _self.confirmedAt : confirmedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,cancelReason: freezed == cancelReason ? _self.cancelReason : cancelReason // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
mixin _$PaymentRequestEntity {

 String get paymentUrl; int get transactionId; int get amount;
/// Create a copy of PaymentRequestEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaymentRequestEntityCopyWith<PaymentRequestEntity> get copyWith => _$PaymentRequestEntityCopyWithImpl<PaymentRequestEntity>(this as PaymentRequestEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentRequestEntity&&(identical(other.paymentUrl, paymentUrl) || other.paymentUrl == paymentUrl)&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId)&&(identical(other.amount, amount) || other.amount == amount));
}


@override
int get hashCode => Object.hash(runtimeType,paymentUrl,transactionId,amount);

@override
String toString() {
  return 'PaymentRequestEntity(paymentUrl: $paymentUrl, transactionId: $transactionId, amount: $amount)';
}


}

/// @nodoc
abstract mixin class $PaymentRequestEntityCopyWith<$Res>  {
  factory $PaymentRequestEntityCopyWith(PaymentRequestEntity value, $Res Function(PaymentRequestEntity) _then) = _$PaymentRequestEntityCopyWithImpl;
@useResult
$Res call({
 String paymentUrl, int transactionId, int amount
});




}
/// @nodoc
class _$PaymentRequestEntityCopyWithImpl<$Res>
    implements $PaymentRequestEntityCopyWith<$Res> {
  _$PaymentRequestEntityCopyWithImpl(this._self, this._then);

  final PaymentRequestEntity _self;
  final $Res Function(PaymentRequestEntity) _then;

/// Create a copy of PaymentRequestEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? paymentUrl = null,Object? transactionId = null,Object? amount = null,}) {
  return _then(_self.copyWith(
paymentUrl: null == paymentUrl ? _self.paymentUrl : paymentUrl // ignore: cast_nullable_to_non_nullable
as String,transactionId: null == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as int,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [PaymentRequestEntity].
extension PaymentRequestEntityPatterns on PaymentRequestEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaymentRequestEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaymentRequestEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaymentRequestEntity value)  $default,){
final _that = this;
switch (_that) {
case _PaymentRequestEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaymentRequestEntity value)?  $default,){
final _that = this;
switch (_that) {
case _PaymentRequestEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String paymentUrl,  int transactionId,  int amount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaymentRequestEntity() when $default != null:
return $default(_that.paymentUrl,_that.transactionId,_that.amount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String paymentUrl,  int transactionId,  int amount)  $default,) {final _that = this;
switch (_that) {
case _PaymentRequestEntity():
return $default(_that.paymentUrl,_that.transactionId,_that.amount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String paymentUrl,  int transactionId,  int amount)?  $default,) {final _that = this;
switch (_that) {
case _PaymentRequestEntity() when $default != null:
return $default(_that.paymentUrl,_that.transactionId,_that.amount);case _:
  return null;

}
}

}

/// @nodoc


class _PaymentRequestEntity implements PaymentRequestEntity {
  const _PaymentRequestEntity({required this.paymentUrl, required this.transactionId, required this.amount});
  

@override final  String paymentUrl;
@override final  int transactionId;
@override final  int amount;

/// Create a copy of PaymentRequestEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaymentRequestEntityCopyWith<_PaymentRequestEntity> get copyWith => __$PaymentRequestEntityCopyWithImpl<_PaymentRequestEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaymentRequestEntity&&(identical(other.paymentUrl, paymentUrl) || other.paymentUrl == paymentUrl)&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId)&&(identical(other.amount, amount) || other.amount == amount));
}


@override
int get hashCode => Object.hash(runtimeType,paymentUrl,transactionId,amount);

@override
String toString() {
  return 'PaymentRequestEntity(paymentUrl: $paymentUrl, transactionId: $transactionId, amount: $amount)';
}


}

/// @nodoc
abstract mixin class _$PaymentRequestEntityCopyWith<$Res> implements $PaymentRequestEntityCopyWith<$Res> {
  factory _$PaymentRequestEntityCopyWith(_PaymentRequestEntity value, $Res Function(_PaymentRequestEntity) _then) = __$PaymentRequestEntityCopyWithImpl;
@override @useResult
$Res call({
 String paymentUrl, int transactionId, int amount
});




}
/// @nodoc
class __$PaymentRequestEntityCopyWithImpl<$Res>
    implements _$PaymentRequestEntityCopyWith<$Res> {
  __$PaymentRequestEntityCopyWithImpl(this._self, this._then);

  final _PaymentRequestEntity _self;
  final $Res Function(_PaymentRequestEntity) _then;

/// Create a copy of PaymentRequestEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? paymentUrl = null,Object? transactionId = null,Object? amount = null,}) {
  return _then(_PaymentRequestEntity(
paymentUrl: null == paymentUrl ? _self.paymentUrl : paymentUrl // ignore: cast_nullable_to_non_nullable
as String,transactionId: null == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as int,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$PurchaseConfirmEntity {

 int get transactionId; DateTime get confirmedAt; bool get success;
/// Create a copy of PurchaseConfirmEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PurchaseConfirmEntityCopyWith<PurchaseConfirmEntity> get copyWith => _$PurchaseConfirmEntityCopyWithImpl<PurchaseConfirmEntity>(this as PurchaseConfirmEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PurchaseConfirmEntity&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId)&&(identical(other.confirmedAt, confirmedAt) || other.confirmedAt == confirmedAt)&&(identical(other.success, success) || other.success == success));
}


@override
int get hashCode => Object.hash(runtimeType,transactionId,confirmedAt,success);

@override
String toString() {
  return 'PurchaseConfirmEntity(transactionId: $transactionId, confirmedAt: $confirmedAt, success: $success)';
}


}

/// @nodoc
abstract mixin class $PurchaseConfirmEntityCopyWith<$Res>  {
  factory $PurchaseConfirmEntityCopyWith(PurchaseConfirmEntity value, $Res Function(PurchaseConfirmEntity) _then) = _$PurchaseConfirmEntityCopyWithImpl;
@useResult
$Res call({
 int transactionId, DateTime confirmedAt, bool success
});




}
/// @nodoc
class _$PurchaseConfirmEntityCopyWithImpl<$Res>
    implements $PurchaseConfirmEntityCopyWith<$Res> {
  _$PurchaseConfirmEntityCopyWithImpl(this._self, this._then);

  final PurchaseConfirmEntity _self;
  final $Res Function(PurchaseConfirmEntity) _then;

/// Create a copy of PurchaseConfirmEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? transactionId = null,Object? confirmedAt = null,Object? success = null,}) {
  return _then(_self.copyWith(
transactionId: null == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as int,confirmedAt: null == confirmedAt ? _self.confirmedAt : confirmedAt // ignore: cast_nullable_to_non_nullable
as DateTime,success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [PurchaseConfirmEntity].
extension PurchaseConfirmEntityPatterns on PurchaseConfirmEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PurchaseConfirmEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PurchaseConfirmEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PurchaseConfirmEntity value)  $default,){
final _that = this;
switch (_that) {
case _PurchaseConfirmEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PurchaseConfirmEntity value)?  $default,){
final _that = this;
switch (_that) {
case _PurchaseConfirmEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int transactionId,  DateTime confirmedAt,  bool success)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PurchaseConfirmEntity() when $default != null:
return $default(_that.transactionId,_that.confirmedAt,_that.success);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int transactionId,  DateTime confirmedAt,  bool success)  $default,) {final _that = this;
switch (_that) {
case _PurchaseConfirmEntity():
return $default(_that.transactionId,_that.confirmedAt,_that.success);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int transactionId,  DateTime confirmedAt,  bool success)?  $default,) {final _that = this;
switch (_that) {
case _PurchaseConfirmEntity() when $default != null:
return $default(_that.transactionId,_that.confirmedAt,_that.success);case _:
  return null;

}
}

}

/// @nodoc


class _PurchaseConfirmEntity implements PurchaseConfirmEntity {
  const _PurchaseConfirmEntity({required this.transactionId, required this.confirmedAt, required this.success});
  

@override final  int transactionId;
@override final  DateTime confirmedAt;
@override final  bool success;

/// Create a copy of PurchaseConfirmEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PurchaseConfirmEntityCopyWith<_PurchaseConfirmEntity> get copyWith => __$PurchaseConfirmEntityCopyWithImpl<_PurchaseConfirmEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PurchaseConfirmEntity&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId)&&(identical(other.confirmedAt, confirmedAt) || other.confirmedAt == confirmedAt)&&(identical(other.success, success) || other.success == success));
}


@override
int get hashCode => Object.hash(runtimeType,transactionId,confirmedAt,success);

@override
String toString() {
  return 'PurchaseConfirmEntity(transactionId: $transactionId, confirmedAt: $confirmedAt, success: $success)';
}


}

/// @nodoc
abstract mixin class _$PurchaseConfirmEntityCopyWith<$Res> implements $PurchaseConfirmEntityCopyWith<$Res> {
  factory _$PurchaseConfirmEntityCopyWith(_PurchaseConfirmEntity value, $Res Function(_PurchaseConfirmEntity) _then) = __$PurchaseConfirmEntityCopyWithImpl;
@override @useResult
$Res call({
 int transactionId, DateTime confirmedAt, bool success
});




}
/// @nodoc
class __$PurchaseConfirmEntityCopyWithImpl<$Res>
    implements _$PurchaseConfirmEntityCopyWith<$Res> {
  __$PurchaseConfirmEntityCopyWithImpl(this._self, this._then);

  final _PurchaseConfirmEntity _self;
  final $Res Function(_PurchaseConfirmEntity) _then;

/// Create a copy of PurchaseConfirmEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? transactionId = null,Object? confirmedAt = null,Object? success = null,}) {
  return _then(_PurchaseConfirmEntity(
transactionId: null == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as int,confirmedAt: null == confirmedAt ? _self.confirmedAt : confirmedAt // ignore: cast_nullable_to_non_nullable
as DateTime,success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
