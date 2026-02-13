// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dispute_detail_resp_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DisputeDetailRespDto {

 int get id; int get transactionId; String get typeCode; String get typeName; String get statusCode; String get statusName; String get description; List<DisputeEvidenceRespDto> get evidences; DisputeTransactionSummaryRespDto? get transaction; String get createdAt;
/// Create a copy of DisputeDetailRespDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DisputeDetailRespDtoCopyWith<DisputeDetailRespDto> get copyWith => _$DisputeDetailRespDtoCopyWithImpl<DisputeDetailRespDto>(this as DisputeDetailRespDto, _$identity);

  /// Serializes this DisputeDetailRespDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DisputeDetailRespDto&&(identical(other.id, id) || other.id == id)&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId)&&(identical(other.typeCode, typeCode) || other.typeCode == typeCode)&&(identical(other.typeName, typeName) || other.typeName == typeName)&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.statusName, statusName) || other.statusName == statusName)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other.evidences, evidences)&&(identical(other.transaction, transaction) || other.transaction == transaction)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,transactionId,typeCode,typeName,statusCode,statusName,description,const DeepCollectionEquality().hash(evidences),transaction,createdAt);

@override
String toString() {
  return 'DisputeDetailRespDto(id: $id, transactionId: $transactionId, typeCode: $typeCode, typeName: $typeName, statusCode: $statusCode, statusName: $statusName, description: $description, evidences: $evidences, transaction: $transaction, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $DisputeDetailRespDtoCopyWith<$Res>  {
  factory $DisputeDetailRespDtoCopyWith(DisputeDetailRespDto value, $Res Function(DisputeDetailRespDto) _then) = _$DisputeDetailRespDtoCopyWithImpl;
@useResult
$Res call({
 int id, int transactionId, String typeCode, String typeName, String statusCode, String statusName, String description, List<DisputeEvidenceRespDto> evidences, DisputeTransactionSummaryRespDto? transaction, String createdAt
});


$DisputeTransactionSummaryRespDtoCopyWith<$Res>? get transaction;

}
/// @nodoc
class _$DisputeDetailRespDtoCopyWithImpl<$Res>
    implements $DisputeDetailRespDtoCopyWith<$Res> {
  _$DisputeDetailRespDtoCopyWithImpl(this._self, this._then);

  final DisputeDetailRespDto _self;
  final $Res Function(DisputeDetailRespDto) _then;

/// Create a copy of DisputeDetailRespDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? transactionId = null,Object? typeCode = null,Object? typeName = null,Object? statusCode = null,Object? statusName = null,Object? description = null,Object? evidences = null,Object? transaction = freezed,Object? createdAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,transactionId: null == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as int,typeCode: null == typeCode ? _self.typeCode : typeCode // ignore: cast_nullable_to_non_nullable
as String,typeName: null == typeName ? _self.typeName : typeName // ignore: cast_nullable_to_non_nullable
as String,statusCode: null == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as String,statusName: null == statusName ? _self.statusName : statusName // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,evidences: null == evidences ? _self.evidences : evidences // ignore: cast_nullable_to_non_nullable
as List<DisputeEvidenceRespDto>,transaction: freezed == transaction ? _self.transaction : transaction // ignore: cast_nullable_to_non_nullable
as DisputeTransactionSummaryRespDto?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of DisputeDetailRespDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DisputeTransactionSummaryRespDtoCopyWith<$Res>? get transaction {
    if (_self.transaction == null) {
    return null;
  }

  return $DisputeTransactionSummaryRespDtoCopyWith<$Res>(_self.transaction!, (value) {
    return _then(_self.copyWith(transaction: value));
  });
}
}


/// Adds pattern-matching-related methods to [DisputeDetailRespDto].
extension DisputeDetailRespDtoPatterns on DisputeDetailRespDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DisputeDetailRespDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DisputeDetailRespDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DisputeDetailRespDto value)  $default,){
final _that = this;
switch (_that) {
case _DisputeDetailRespDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DisputeDetailRespDto value)?  $default,){
final _that = this;
switch (_that) {
case _DisputeDetailRespDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  int transactionId,  String typeCode,  String typeName,  String statusCode,  String statusName,  String description,  List<DisputeEvidenceRespDto> evidences,  DisputeTransactionSummaryRespDto? transaction,  String createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DisputeDetailRespDto() when $default != null:
return $default(_that.id,_that.transactionId,_that.typeCode,_that.typeName,_that.statusCode,_that.statusName,_that.description,_that.evidences,_that.transaction,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  int transactionId,  String typeCode,  String typeName,  String statusCode,  String statusName,  String description,  List<DisputeEvidenceRespDto> evidences,  DisputeTransactionSummaryRespDto? transaction,  String createdAt)  $default,) {final _that = this;
switch (_that) {
case _DisputeDetailRespDto():
return $default(_that.id,_that.transactionId,_that.typeCode,_that.typeName,_that.statusCode,_that.statusName,_that.description,_that.evidences,_that.transaction,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  int transactionId,  String typeCode,  String typeName,  String statusCode,  String statusName,  String description,  List<DisputeEvidenceRespDto> evidences,  DisputeTransactionSummaryRespDto? transaction,  String createdAt)?  $default,) {final _that = this;
switch (_that) {
case _DisputeDetailRespDto() when $default != null:
return $default(_that.id,_that.transactionId,_that.typeCode,_that.typeName,_that.statusCode,_that.statusName,_that.description,_that.evidences,_that.transaction,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DisputeDetailRespDto implements DisputeDetailRespDto {
  const _DisputeDetailRespDto({required this.id, required this.transactionId, required this.typeCode, required this.typeName, required this.statusCode, required this.statusName, required this.description, final  List<DisputeEvidenceRespDto> evidences = const [], this.transaction, required this.createdAt}): _evidences = evidences;
  factory _DisputeDetailRespDto.fromJson(Map<String, dynamic> json) => _$DisputeDetailRespDtoFromJson(json);

@override final  int id;
@override final  int transactionId;
@override final  String typeCode;
@override final  String typeName;
@override final  String statusCode;
@override final  String statusName;
@override final  String description;
 final  List<DisputeEvidenceRespDto> _evidences;
@override@JsonKey() List<DisputeEvidenceRespDto> get evidences {
  if (_evidences is EqualUnmodifiableListView) return _evidences;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_evidences);
}

@override final  DisputeTransactionSummaryRespDto? transaction;
@override final  String createdAt;

/// Create a copy of DisputeDetailRespDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DisputeDetailRespDtoCopyWith<_DisputeDetailRespDto> get copyWith => __$DisputeDetailRespDtoCopyWithImpl<_DisputeDetailRespDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DisputeDetailRespDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DisputeDetailRespDto&&(identical(other.id, id) || other.id == id)&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId)&&(identical(other.typeCode, typeCode) || other.typeCode == typeCode)&&(identical(other.typeName, typeName) || other.typeName == typeName)&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.statusName, statusName) || other.statusName == statusName)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other._evidences, _evidences)&&(identical(other.transaction, transaction) || other.transaction == transaction)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,transactionId,typeCode,typeName,statusCode,statusName,description,const DeepCollectionEquality().hash(_evidences),transaction,createdAt);

@override
String toString() {
  return 'DisputeDetailRespDto(id: $id, transactionId: $transactionId, typeCode: $typeCode, typeName: $typeName, statusCode: $statusCode, statusName: $statusName, description: $description, evidences: $evidences, transaction: $transaction, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$DisputeDetailRespDtoCopyWith<$Res> implements $DisputeDetailRespDtoCopyWith<$Res> {
  factory _$DisputeDetailRespDtoCopyWith(_DisputeDetailRespDto value, $Res Function(_DisputeDetailRespDto) _then) = __$DisputeDetailRespDtoCopyWithImpl;
@override @useResult
$Res call({
 int id, int transactionId, String typeCode, String typeName, String statusCode, String statusName, String description, List<DisputeEvidenceRespDto> evidences, DisputeTransactionSummaryRespDto? transaction, String createdAt
});


@override $DisputeTransactionSummaryRespDtoCopyWith<$Res>? get transaction;

}
/// @nodoc
class __$DisputeDetailRespDtoCopyWithImpl<$Res>
    implements _$DisputeDetailRespDtoCopyWith<$Res> {
  __$DisputeDetailRespDtoCopyWithImpl(this._self, this._then);

  final _DisputeDetailRespDto _self;
  final $Res Function(_DisputeDetailRespDto) _then;

/// Create a copy of DisputeDetailRespDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? transactionId = null,Object? typeCode = null,Object? typeName = null,Object? statusCode = null,Object? statusName = null,Object? description = null,Object? evidences = null,Object? transaction = freezed,Object? createdAt = null,}) {
  return _then(_DisputeDetailRespDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,transactionId: null == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as int,typeCode: null == typeCode ? _self.typeCode : typeCode // ignore: cast_nullable_to_non_nullable
as String,typeName: null == typeName ? _self.typeName : typeName // ignore: cast_nullable_to_non_nullable
as String,statusCode: null == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as String,statusName: null == statusName ? _self.statusName : statusName // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,evidences: null == evidences ? _self._evidences : evidences // ignore: cast_nullable_to_non_nullable
as List<DisputeEvidenceRespDto>,transaction: freezed == transaction ? _self.transaction : transaction // ignore: cast_nullable_to_non_nullable
as DisputeTransactionSummaryRespDto?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of DisputeDetailRespDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DisputeTransactionSummaryRespDtoCopyWith<$Res>? get transaction {
    if (_self.transaction == null) {
    return null;
  }

  return $DisputeTransactionSummaryRespDtoCopyWith<$Res>(_self.transaction!, (value) {
    return _then(_self.copyWith(transaction: value));
  });
}
}


/// @nodoc
mixin _$DisputeTransactionSummaryRespDto {

 int get transactionId; String get ticketTitle; int get amount; String? get buyerNickname; String? get sellerNickname;
/// Create a copy of DisputeTransactionSummaryRespDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DisputeTransactionSummaryRespDtoCopyWith<DisputeTransactionSummaryRespDto> get copyWith => _$DisputeTransactionSummaryRespDtoCopyWithImpl<DisputeTransactionSummaryRespDto>(this as DisputeTransactionSummaryRespDto, _$identity);

  /// Serializes this DisputeTransactionSummaryRespDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DisputeTransactionSummaryRespDto&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId)&&(identical(other.ticketTitle, ticketTitle) || other.ticketTitle == ticketTitle)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.buyerNickname, buyerNickname) || other.buyerNickname == buyerNickname)&&(identical(other.sellerNickname, sellerNickname) || other.sellerNickname == sellerNickname));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,transactionId,ticketTitle,amount,buyerNickname,sellerNickname);

@override
String toString() {
  return 'DisputeTransactionSummaryRespDto(transactionId: $transactionId, ticketTitle: $ticketTitle, amount: $amount, buyerNickname: $buyerNickname, sellerNickname: $sellerNickname)';
}


}

/// @nodoc
abstract mixin class $DisputeTransactionSummaryRespDtoCopyWith<$Res>  {
  factory $DisputeTransactionSummaryRespDtoCopyWith(DisputeTransactionSummaryRespDto value, $Res Function(DisputeTransactionSummaryRespDto) _then) = _$DisputeTransactionSummaryRespDtoCopyWithImpl;
@useResult
$Res call({
 int transactionId, String ticketTitle, int amount, String? buyerNickname, String? sellerNickname
});




}
/// @nodoc
class _$DisputeTransactionSummaryRespDtoCopyWithImpl<$Res>
    implements $DisputeTransactionSummaryRespDtoCopyWith<$Res> {
  _$DisputeTransactionSummaryRespDtoCopyWithImpl(this._self, this._then);

  final DisputeTransactionSummaryRespDto _self;
  final $Res Function(DisputeTransactionSummaryRespDto) _then;

/// Create a copy of DisputeTransactionSummaryRespDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? transactionId = null,Object? ticketTitle = null,Object? amount = null,Object? buyerNickname = freezed,Object? sellerNickname = freezed,}) {
  return _then(_self.copyWith(
transactionId: null == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as int,ticketTitle: null == ticketTitle ? _self.ticketTitle : ticketTitle // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,buyerNickname: freezed == buyerNickname ? _self.buyerNickname : buyerNickname // ignore: cast_nullable_to_non_nullable
as String?,sellerNickname: freezed == sellerNickname ? _self.sellerNickname : sellerNickname // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [DisputeTransactionSummaryRespDto].
extension DisputeTransactionSummaryRespDtoPatterns on DisputeTransactionSummaryRespDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DisputeTransactionSummaryRespDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DisputeTransactionSummaryRespDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DisputeTransactionSummaryRespDto value)  $default,){
final _that = this;
switch (_that) {
case _DisputeTransactionSummaryRespDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DisputeTransactionSummaryRespDto value)?  $default,){
final _that = this;
switch (_that) {
case _DisputeTransactionSummaryRespDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int transactionId,  String ticketTitle,  int amount,  String? buyerNickname,  String? sellerNickname)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DisputeTransactionSummaryRespDto() when $default != null:
return $default(_that.transactionId,_that.ticketTitle,_that.amount,_that.buyerNickname,_that.sellerNickname);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int transactionId,  String ticketTitle,  int amount,  String? buyerNickname,  String? sellerNickname)  $default,) {final _that = this;
switch (_that) {
case _DisputeTransactionSummaryRespDto():
return $default(_that.transactionId,_that.ticketTitle,_that.amount,_that.buyerNickname,_that.sellerNickname);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int transactionId,  String ticketTitle,  int amount,  String? buyerNickname,  String? sellerNickname)?  $default,) {final _that = this;
switch (_that) {
case _DisputeTransactionSummaryRespDto() when $default != null:
return $default(_that.transactionId,_that.ticketTitle,_that.amount,_that.buyerNickname,_that.sellerNickname);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DisputeTransactionSummaryRespDto implements DisputeTransactionSummaryRespDto {
  const _DisputeTransactionSummaryRespDto({required this.transactionId, required this.ticketTitle, required this.amount, this.buyerNickname, this.sellerNickname});
  factory _DisputeTransactionSummaryRespDto.fromJson(Map<String, dynamic> json) => _$DisputeTransactionSummaryRespDtoFromJson(json);

@override final  int transactionId;
@override final  String ticketTitle;
@override final  int amount;
@override final  String? buyerNickname;
@override final  String? sellerNickname;

/// Create a copy of DisputeTransactionSummaryRespDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DisputeTransactionSummaryRespDtoCopyWith<_DisputeTransactionSummaryRespDto> get copyWith => __$DisputeTransactionSummaryRespDtoCopyWithImpl<_DisputeTransactionSummaryRespDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DisputeTransactionSummaryRespDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DisputeTransactionSummaryRespDto&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId)&&(identical(other.ticketTitle, ticketTitle) || other.ticketTitle == ticketTitle)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.buyerNickname, buyerNickname) || other.buyerNickname == buyerNickname)&&(identical(other.sellerNickname, sellerNickname) || other.sellerNickname == sellerNickname));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,transactionId,ticketTitle,amount,buyerNickname,sellerNickname);

@override
String toString() {
  return 'DisputeTransactionSummaryRespDto(transactionId: $transactionId, ticketTitle: $ticketTitle, amount: $amount, buyerNickname: $buyerNickname, sellerNickname: $sellerNickname)';
}


}

/// @nodoc
abstract mixin class _$DisputeTransactionSummaryRespDtoCopyWith<$Res> implements $DisputeTransactionSummaryRespDtoCopyWith<$Res> {
  factory _$DisputeTransactionSummaryRespDtoCopyWith(_DisputeTransactionSummaryRespDto value, $Res Function(_DisputeTransactionSummaryRespDto) _then) = __$DisputeTransactionSummaryRespDtoCopyWithImpl;
@override @useResult
$Res call({
 int transactionId, String ticketTitle, int amount, String? buyerNickname, String? sellerNickname
});




}
/// @nodoc
class __$DisputeTransactionSummaryRespDtoCopyWithImpl<$Res>
    implements _$DisputeTransactionSummaryRespDtoCopyWith<$Res> {
  __$DisputeTransactionSummaryRespDtoCopyWithImpl(this._self, this._then);

  final _DisputeTransactionSummaryRespDto _self;
  final $Res Function(_DisputeTransactionSummaryRespDto) _then;

/// Create a copy of DisputeTransactionSummaryRespDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? transactionId = null,Object? ticketTitle = null,Object? amount = null,Object? buyerNickname = freezed,Object? sellerNickname = freezed,}) {
  return _then(_DisputeTransactionSummaryRespDto(
transactionId: null == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as int,ticketTitle: null == ticketTitle ? _self.ticketTitle : ticketTitle // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,buyerNickname: freezed == buyerNickname ? _self.buyerNickname : buyerNickname // ignore: cast_nullable_to_non_nullable
as String?,sellerNickname: freezed == sellerNickname ? _self.sellerNickname : sellerNickname // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
