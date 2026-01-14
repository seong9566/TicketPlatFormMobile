// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sell_ticket_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TicketImageEntity {

 int get imageId; String get imageUrl; DateTime get expiresAt;
/// Create a copy of TicketImageEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TicketImageEntityCopyWith<TicketImageEntity> get copyWith => _$TicketImageEntityCopyWithImpl<TicketImageEntity>(this as TicketImageEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TicketImageEntity&&(identical(other.imageId, imageId) || other.imageId == imageId)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.expiresAt, expiresAt) || other.expiresAt == expiresAt));
}


@override
int get hashCode => Object.hash(runtimeType,imageId,imageUrl,expiresAt);

@override
String toString() {
  return 'TicketImageEntity(imageId: $imageId, imageUrl: $imageUrl, expiresAt: $expiresAt)';
}


}

/// @nodoc
abstract mixin class $TicketImageEntityCopyWith<$Res>  {
  factory $TicketImageEntityCopyWith(TicketImageEntity value, $Res Function(TicketImageEntity) _then) = _$TicketImageEntityCopyWithImpl;
@useResult
$Res call({
 int imageId, String imageUrl, DateTime expiresAt
});




}
/// @nodoc
class _$TicketImageEntityCopyWithImpl<$Res>
    implements $TicketImageEntityCopyWith<$Res> {
  _$TicketImageEntityCopyWithImpl(this._self, this._then);

  final TicketImageEntity _self;
  final $Res Function(TicketImageEntity) _then;

/// Create a copy of TicketImageEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? imageId = null,Object? imageUrl = null,Object? expiresAt = null,}) {
  return _then(_self.copyWith(
imageId: null == imageId ? _self.imageId : imageId // ignore: cast_nullable_to_non_nullable
as int,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,expiresAt: null == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [TicketImageEntity].
extension TicketImageEntityPatterns on TicketImageEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TicketImageEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TicketImageEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TicketImageEntity value)  $default,){
final _that = this;
switch (_that) {
case _TicketImageEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TicketImageEntity value)?  $default,){
final _that = this;
switch (_that) {
case _TicketImageEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int imageId,  String imageUrl,  DateTime expiresAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TicketImageEntity() when $default != null:
return $default(_that.imageId,_that.imageUrl,_that.expiresAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int imageId,  String imageUrl,  DateTime expiresAt)  $default,) {final _that = this;
switch (_that) {
case _TicketImageEntity():
return $default(_that.imageId,_that.imageUrl,_that.expiresAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int imageId,  String imageUrl,  DateTime expiresAt)?  $default,) {final _that = this;
switch (_that) {
case _TicketImageEntity() when $default != null:
return $default(_that.imageId,_that.imageUrl,_that.expiresAt);case _:
  return null;

}
}

}

/// @nodoc


class _TicketImageEntity implements TicketImageEntity {
  const _TicketImageEntity({required this.imageId, required this.imageUrl, required this.expiresAt});
  

@override final  int imageId;
@override final  String imageUrl;
@override final  DateTime expiresAt;

/// Create a copy of TicketImageEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TicketImageEntityCopyWith<_TicketImageEntity> get copyWith => __$TicketImageEntityCopyWithImpl<_TicketImageEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TicketImageEntity&&(identical(other.imageId, imageId) || other.imageId == imageId)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.expiresAt, expiresAt) || other.expiresAt == expiresAt));
}


@override
int get hashCode => Object.hash(runtimeType,imageId,imageUrl,expiresAt);

@override
String toString() {
  return 'TicketImageEntity(imageId: $imageId, imageUrl: $imageUrl, expiresAt: $expiresAt)';
}


}

/// @nodoc
abstract mixin class _$TicketImageEntityCopyWith<$Res> implements $TicketImageEntityCopyWith<$Res> {
  factory _$TicketImageEntityCopyWith(_TicketImageEntity value, $Res Function(_TicketImageEntity) _then) = __$TicketImageEntityCopyWithImpl;
@override @useResult
$Res call({
 int imageId, String imageUrl, DateTime expiresAt
});




}
/// @nodoc
class __$TicketImageEntityCopyWithImpl<$Res>
    implements _$TicketImageEntityCopyWith<$Res> {
  __$TicketImageEntityCopyWithImpl(this._self, this._then);

  final _TicketImageEntity _self;
  final $Res Function(_TicketImageEntity) _then;

/// Create a copy of TicketImageEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? imageId = null,Object? imageUrl = null,Object? expiresAt = null,}) {
  return _then(_TicketImageEntity(
imageId: null == imageId ? _self.imageId : imageId // ignore: cast_nullable_to_non_nullable
as int,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,expiresAt: null == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

/// @nodoc
mixin _$SellMyTicketEntity {

 int get ticketId; String get title; DateTime get eventDatetime; String get seatInfo; int get quantity; int get remainingQuantity; int get price; int get originalPrice; String get status; DateTime get createdAt; String? get thumbnailUrl;
/// Create a copy of SellMyTicketEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SellMyTicketEntityCopyWith<SellMyTicketEntity> get copyWith => _$SellMyTicketEntityCopyWithImpl<SellMyTicketEntity>(this as SellMyTicketEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SellMyTicketEntity&&(identical(other.ticketId, ticketId) || other.ticketId == ticketId)&&(identical(other.title, title) || other.title == title)&&(identical(other.eventDatetime, eventDatetime) || other.eventDatetime == eventDatetime)&&(identical(other.seatInfo, seatInfo) || other.seatInfo == seatInfo)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.remainingQuantity, remainingQuantity) || other.remainingQuantity == remainingQuantity)&&(identical(other.price, price) || other.price == price)&&(identical(other.originalPrice, originalPrice) || other.originalPrice == originalPrice)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.thumbnailUrl, thumbnailUrl) || other.thumbnailUrl == thumbnailUrl));
}


@override
int get hashCode => Object.hash(runtimeType,ticketId,title,eventDatetime,seatInfo,quantity,remainingQuantity,price,originalPrice,status,createdAt,thumbnailUrl);

@override
String toString() {
  return 'SellMyTicketEntity(ticketId: $ticketId, title: $title, eventDatetime: $eventDatetime, seatInfo: $seatInfo, quantity: $quantity, remainingQuantity: $remainingQuantity, price: $price, originalPrice: $originalPrice, status: $status, createdAt: $createdAt, thumbnailUrl: $thumbnailUrl)';
}


}

/// @nodoc
abstract mixin class $SellMyTicketEntityCopyWith<$Res>  {
  factory $SellMyTicketEntityCopyWith(SellMyTicketEntity value, $Res Function(SellMyTicketEntity) _then) = _$SellMyTicketEntityCopyWithImpl;
@useResult
$Res call({
 int ticketId, String title, DateTime eventDatetime, String seatInfo, int quantity, int remainingQuantity, int price, int originalPrice, String status, DateTime createdAt, String? thumbnailUrl
});




}
/// @nodoc
class _$SellMyTicketEntityCopyWithImpl<$Res>
    implements $SellMyTicketEntityCopyWith<$Res> {
  _$SellMyTicketEntityCopyWithImpl(this._self, this._then);

  final SellMyTicketEntity _self;
  final $Res Function(SellMyTicketEntity) _then;

/// Create a copy of SellMyTicketEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? ticketId = null,Object? title = null,Object? eventDatetime = null,Object? seatInfo = null,Object? quantity = null,Object? remainingQuantity = null,Object? price = null,Object? originalPrice = null,Object? status = null,Object? createdAt = null,Object? thumbnailUrl = freezed,}) {
  return _then(_self.copyWith(
ticketId: null == ticketId ? _self.ticketId : ticketId // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,eventDatetime: null == eventDatetime ? _self.eventDatetime : eventDatetime // ignore: cast_nullable_to_non_nullable
as DateTime,seatInfo: null == seatInfo ? _self.seatInfo : seatInfo // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,remainingQuantity: null == remainingQuantity ? _self.remainingQuantity : remainingQuantity // ignore: cast_nullable_to_non_nullable
as int,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,originalPrice: null == originalPrice ? _self.originalPrice : originalPrice // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,thumbnailUrl: freezed == thumbnailUrl ? _self.thumbnailUrl : thumbnailUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SellMyTicketEntity].
extension SellMyTicketEntityPatterns on SellMyTicketEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SellMyTicketEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SellMyTicketEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SellMyTicketEntity value)  $default,){
final _that = this;
switch (_that) {
case _SellMyTicketEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SellMyTicketEntity value)?  $default,){
final _that = this;
switch (_that) {
case _SellMyTicketEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int ticketId,  String title,  DateTime eventDatetime,  String seatInfo,  int quantity,  int remainingQuantity,  int price,  int originalPrice,  String status,  DateTime createdAt,  String? thumbnailUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SellMyTicketEntity() when $default != null:
return $default(_that.ticketId,_that.title,_that.eventDatetime,_that.seatInfo,_that.quantity,_that.remainingQuantity,_that.price,_that.originalPrice,_that.status,_that.createdAt,_that.thumbnailUrl);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int ticketId,  String title,  DateTime eventDatetime,  String seatInfo,  int quantity,  int remainingQuantity,  int price,  int originalPrice,  String status,  DateTime createdAt,  String? thumbnailUrl)  $default,) {final _that = this;
switch (_that) {
case _SellMyTicketEntity():
return $default(_that.ticketId,_that.title,_that.eventDatetime,_that.seatInfo,_that.quantity,_that.remainingQuantity,_that.price,_that.originalPrice,_that.status,_that.createdAt,_that.thumbnailUrl);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int ticketId,  String title,  DateTime eventDatetime,  String seatInfo,  int quantity,  int remainingQuantity,  int price,  int originalPrice,  String status,  DateTime createdAt,  String? thumbnailUrl)?  $default,) {final _that = this;
switch (_that) {
case _SellMyTicketEntity() when $default != null:
return $default(_that.ticketId,_that.title,_that.eventDatetime,_that.seatInfo,_that.quantity,_that.remainingQuantity,_that.price,_that.originalPrice,_that.status,_that.createdAt,_that.thumbnailUrl);case _:
  return null;

}
}

}

/// @nodoc


class _SellMyTicketEntity implements SellMyTicketEntity {
  const _SellMyTicketEntity({required this.ticketId, required this.title, required this.eventDatetime, required this.seatInfo, required this.quantity, required this.remainingQuantity, required this.price, required this.originalPrice, required this.status, required this.createdAt, this.thumbnailUrl});
  

@override final  int ticketId;
@override final  String title;
@override final  DateTime eventDatetime;
@override final  String seatInfo;
@override final  int quantity;
@override final  int remainingQuantity;
@override final  int price;
@override final  int originalPrice;
@override final  String status;
@override final  DateTime createdAt;
@override final  String? thumbnailUrl;

/// Create a copy of SellMyTicketEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SellMyTicketEntityCopyWith<_SellMyTicketEntity> get copyWith => __$SellMyTicketEntityCopyWithImpl<_SellMyTicketEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SellMyTicketEntity&&(identical(other.ticketId, ticketId) || other.ticketId == ticketId)&&(identical(other.title, title) || other.title == title)&&(identical(other.eventDatetime, eventDatetime) || other.eventDatetime == eventDatetime)&&(identical(other.seatInfo, seatInfo) || other.seatInfo == seatInfo)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.remainingQuantity, remainingQuantity) || other.remainingQuantity == remainingQuantity)&&(identical(other.price, price) || other.price == price)&&(identical(other.originalPrice, originalPrice) || other.originalPrice == originalPrice)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.thumbnailUrl, thumbnailUrl) || other.thumbnailUrl == thumbnailUrl));
}


@override
int get hashCode => Object.hash(runtimeType,ticketId,title,eventDatetime,seatInfo,quantity,remainingQuantity,price,originalPrice,status,createdAt,thumbnailUrl);

@override
String toString() {
  return 'SellMyTicketEntity(ticketId: $ticketId, title: $title, eventDatetime: $eventDatetime, seatInfo: $seatInfo, quantity: $quantity, remainingQuantity: $remainingQuantity, price: $price, originalPrice: $originalPrice, status: $status, createdAt: $createdAt, thumbnailUrl: $thumbnailUrl)';
}


}

/// @nodoc
abstract mixin class _$SellMyTicketEntityCopyWith<$Res> implements $SellMyTicketEntityCopyWith<$Res> {
  factory _$SellMyTicketEntityCopyWith(_SellMyTicketEntity value, $Res Function(_SellMyTicketEntity) _then) = __$SellMyTicketEntityCopyWithImpl;
@override @useResult
$Res call({
 int ticketId, String title, DateTime eventDatetime, String seatInfo, int quantity, int remainingQuantity, int price, int originalPrice, String status, DateTime createdAt, String? thumbnailUrl
});




}
/// @nodoc
class __$SellMyTicketEntityCopyWithImpl<$Res>
    implements _$SellMyTicketEntityCopyWith<$Res> {
  __$SellMyTicketEntityCopyWithImpl(this._self, this._then);

  final _SellMyTicketEntity _self;
  final $Res Function(_SellMyTicketEntity) _then;

/// Create a copy of SellMyTicketEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? ticketId = null,Object? title = null,Object? eventDatetime = null,Object? seatInfo = null,Object? quantity = null,Object? remainingQuantity = null,Object? price = null,Object? originalPrice = null,Object? status = null,Object? createdAt = null,Object? thumbnailUrl = freezed,}) {
  return _then(_SellMyTicketEntity(
ticketId: null == ticketId ? _self.ticketId : ticketId // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,eventDatetime: null == eventDatetime ? _self.eventDatetime : eventDatetime // ignore: cast_nullable_to_non_nullable
as DateTime,seatInfo: null == seatInfo ? _self.seatInfo : seatInfo // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,remainingQuantity: null == remainingQuantity ? _self.remainingQuantity : remainingQuantity // ignore: cast_nullable_to_non_nullable
as int,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,originalPrice: null == originalPrice ? _self.originalPrice : originalPrice // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,thumbnailUrl: freezed == thumbnailUrl ? _self.thumbnailUrl : thumbnailUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
mixin _$SellMyTicketsPageEntity {

 List<SellMyTicketEntity> get tickets; int get totalCount; int get currentPage; int get pageSize; int get totalPages;
/// Create a copy of SellMyTicketsPageEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SellMyTicketsPageEntityCopyWith<SellMyTicketsPageEntity> get copyWith => _$SellMyTicketsPageEntityCopyWithImpl<SellMyTicketsPageEntity>(this as SellMyTicketsPageEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SellMyTicketsPageEntity&&const DeepCollectionEquality().equals(other.tickets, tickets)&&(identical(other.totalCount, totalCount) || other.totalCount == totalCount)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.pageSize, pageSize) || other.pageSize == pageSize)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(tickets),totalCount,currentPage,pageSize,totalPages);

@override
String toString() {
  return 'SellMyTicketsPageEntity(tickets: $tickets, totalCount: $totalCount, currentPage: $currentPage, pageSize: $pageSize, totalPages: $totalPages)';
}


}

/// @nodoc
abstract mixin class $SellMyTicketsPageEntityCopyWith<$Res>  {
  factory $SellMyTicketsPageEntityCopyWith(SellMyTicketsPageEntity value, $Res Function(SellMyTicketsPageEntity) _then) = _$SellMyTicketsPageEntityCopyWithImpl;
@useResult
$Res call({
 List<SellMyTicketEntity> tickets, int totalCount, int currentPage, int pageSize, int totalPages
});




}
/// @nodoc
class _$SellMyTicketsPageEntityCopyWithImpl<$Res>
    implements $SellMyTicketsPageEntityCopyWith<$Res> {
  _$SellMyTicketsPageEntityCopyWithImpl(this._self, this._then);

  final SellMyTicketsPageEntity _self;
  final $Res Function(SellMyTicketsPageEntity) _then;

/// Create a copy of SellMyTicketsPageEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? tickets = null,Object? totalCount = null,Object? currentPage = null,Object? pageSize = null,Object? totalPages = null,}) {
  return _then(_self.copyWith(
tickets: null == tickets ? _self.tickets : tickets // ignore: cast_nullable_to_non_nullable
as List<SellMyTicketEntity>,totalCount: null == totalCount ? _self.totalCount : totalCount // ignore: cast_nullable_to_non_nullable
as int,currentPage: null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,pageSize: null == pageSize ? _self.pageSize : pageSize // ignore: cast_nullable_to_non_nullable
as int,totalPages: null == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [SellMyTicketsPageEntity].
extension SellMyTicketsPageEntityPatterns on SellMyTicketsPageEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SellMyTicketsPageEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SellMyTicketsPageEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SellMyTicketsPageEntity value)  $default,){
final _that = this;
switch (_that) {
case _SellMyTicketsPageEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SellMyTicketsPageEntity value)?  $default,){
final _that = this;
switch (_that) {
case _SellMyTicketsPageEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<SellMyTicketEntity> tickets,  int totalCount,  int currentPage,  int pageSize,  int totalPages)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SellMyTicketsPageEntity() when $default != null:
return $default(_that.tickets,_that.totalCount,_that.currentPage,_that.pageSize,_that.totalPages);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<SellMyTicketEntity> tickets,  int totalCount,  int currentPage,  int pageSize,  int totalPages)  $default,) {final _that = this;
switch (_that) {
case _SellMyTicketsPageEntity():
return $default(_that.tickets,_that.totalCount,_that.currentPage,_that.pageSize,_that.totalPages);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<SellMyTicketEntity> tickets,  int totalCount,  int currentPage,  int pageSize,  int totalPages)?  $default,) {final _that = this;
switch (_that) {
case _SellMyTicketsPageEntity() when $default != null:
return $default(_that.tickets,_that.totalCount,_that.currentPage,_that.pageSize,_that.totalPages);case _:
  return null;

}
}

}

/// @nodoc


class _SellMyTicketsPageEntity implements SellMyTicketsPageEntity {
  const _SellMyTicketsPageEntity({required final  List<SellMyTicketEntity> tickets, required this.totalCount, required this.currentPage, required this.pageSize, required this.totalPages}): _tickets = tickets;
  

 final  List<SellMyTicketEntity> _tickets;
@override List<SellMyTicketEntity> get tickets {
  if (_tickets is EqualUnmodifiableListView) return _tickets;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tickets);
}

@override final  int totalCount;
@override final  int currentPage;
@override final  int pageSize;
@override final  int totalPages;

/// Create a copy of SellMyTicketsPageEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SellMyTicketsPageEntityCopyWith<_SellMyTicketsPageEntity> get copyWith => __$SellMyTicketsPageEntityCopyWithImpl<_SellMyTicketsPageEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SellMyTicketsPageEntity&&const DeepCollectionEquality().equals(other._tickets, _tickets)&&(identical(other.totalCount, totalCount) || other.totalCount == totalCount)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.pageSize, pageSize) || other.pageSize == pageSize)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_tickets),totalCount,currentPage,pageSize,totalPages);

@override
String toString() {
  return 'SellMyTicketsPageEntity(tickets: $tickets, totalCount: $totalCount, currentPage: $currentPage, pageSize: $pageSize, totalPages: $totalPages)';
}


}

/// @nodoc
abstract mixin class _$SellMyTicketsPageEntityCopyWith<$Res> implements $SellMyTicketsPageEntityCopyWith<$Res> {
  factory _$SellMyTicketsPageEntityCopyWith(_SellMyTicketsPageEntity value, $Res Function(_SellMyTicketsPageEntity) _then) = __$SellMyTicketsPageEntityCopyWithImpl;
@override @useResult
$Res call({
 List<SellMyTicketEntity> tickets, int totalCount, int currentPage, int pageSize, int totalPages
});




}
/// @nodoc
class __$SellMyTicketsPageEntityCopyWithImpl<$Res>
    implements _$SellMyTicketsPageEntityCopyWith<$Res> {
  __$SellMyTicketsPageEntityCopyWithImpl(this._self, this._then);

  final _SellMyTicketsPageEntity _self;
  final $Res Function(_SellMyTicketsPageEntity) _then;

/// Create a copy of SellMyTicketsPageEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? tickets = null,Object? totalCount = null,Object? currentPage = null,Object? pageSize = null,Object? totalPages = null,}) {
  return _then(_SellMyTicketsPageEntity(
tickets: null == tickets ? _self._tickets : tickets // ignore: cast_nullable_to_non_nullable
as List<SellMyTicketEntity>,totalCount: null == totalCount ? _self.totalCount : totalCount // ignore: cast_nullable_to_non_nullable
as int,currentPage: null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,pageSize: null == pageSize ? _self.pageSize : pageSize // ignore: cast_nullable_to_non_nullable
as int,totalPages: null == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$SellTicketRegisterResult {

 int get ticketId; String get status; String get message; List<TicketImageEntity>? get images;
/// Create a copy of SellTicketRegisterResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SellTicketRegisterResultCopyWith<SellTicketRegisterResult> get copyWith => _$SellTicketRegisterResultCopyWithImpl<SellTicketRegisterResult>(this as SellTicketRegisterResult, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SellTicketRegisterResult&&(identical(other.ticketId, ticketId) || other.ticketId == ticketId)&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other.images, images));
}


@override
int get hashCode => Object.hash(runtimeType,ticketId,status,message,const DeepCollectionEquality().hash(images));

@override
String toString() {
  return 'SellTicketRegisterResult(ticketId: $ticketId, status: $status, message: $message, images: $images)';
}


}

/// @nodoc
abstract mixin class $SellTicketRegisterResultCopyWith<$Res>  {
  factory $SellTicketRegisterResultCopyWith(SellTicketRegisterResult value, $Res Function(SellTicketRegisterResult) _then) = _$SellTicketRegisterResultCopyWithImpl;
@useResult
$Res call({
 int ticketId, String status, String message, List<TicketImageEntity>? images
});




}
/// @nodoc
class _$SellTicketRegisterResultCopyWithImpl<$Res>
    implements $SellTicketRegisterResultCopyWith<$Res> {
  _$SellTicketRegisterResultCopyWithImpl(this._self, this._then);

  final SellTicketRegisterResult _self;
  final $Res Function(SellTicketRegisterResult) _then;

/// Create a copy of SellTicketRegisterResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? ticketId = null,Object? status = null,Object? message = null,Object? images = freezed,}) {
  return _then(_self.copyWith(
ticketId: null == ticketId ? _self.ticketId : ticketId // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,images: freezed == images ? _self.images : images // ignore: cast_nullable_to_non_nullable
as List<TicketImageEntity>?,
  ));
}

}


/// Adds pattern-matching-related methods to [SellTicketRegisterResult].
extension SellTicketRegisterResultPatterns on SellTicketRegisterResult {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SellTicketRegisterResult value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SellTicketRegisterResult() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SellTicketRegisterResult value)  $default,){
final _that = this;
switch (_that) {
case _SellTicketRegisterResult():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SellTicketRegisterResult value)?  $default,){
final _that = this;
switch (_that) {
case _SellTicketRegisterResult() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int ticketId,  String status,  String message,  List<TicketImageEntity>? images)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SellTicketRegisterResult() when $default != null:
return $default(_that.ticketId,_that.status,_that.message,_that.images);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int ticketId,  String status,  String message,  List<TicketImageEntity>? images)  $default,) {final _that = this;
switch (_that) {
case _SellTicketRegisterResult():
return $default(_that.ticketId,_that.status,_that.message,_that.images);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int ticketId,  String status,  String message,  List<TicketImageEntity>? images)?  $default,) {final _that = this;
switch (_that) {
case _SellTicketRegisterResult() when $default != null:
return $default(_that.ticketId,_that.status,_that.message,_that.images);case _:
  return null;

}
}

}

/// @nodoc


class _SellTicketRegisterResult implements SellTicketRegisterResult {
  const _SellTicketRegisterResult({required this.ticketId, required this.status, required this.message, final  List<TicketImageEntity>? images}): _images = images;
  

@override final  int ticketId;
@override final  String status;
@override final  String message;
 final  List<TicketImageEntity>? _images;
@override List<TicketImageEntity>? get images {
  final value = _images;
  if (value == null) return null;
  if (_images is EqualUnmodifiableListView) return _images;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of SellTicketRegisterResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SellTicketRegisterResultCopyWith<_SellTicketRegisterResult> get copyWith => __$SellTicketRegisterResultCopyWithImpl<_SellTicketRegisterResult>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SellTicketRegisterResult&&(identical(other.ticketId, ticketId) || other.ticketId == ticketId)&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other._images, _images));
}


@override
int get hashCode => Object.hash(runtimeType,ticketId,status,message,const DeepCollectionEquality().hash(_images));

@override
String toString() {
  return 'SellTicketRegisterResult(ticketId: $ticketId, status: $status, message: $message, images: $images)';
}


}

/// @nodoc
abstract mixin class _$SellTicketRegisterResultCopyWith<$Res> implements $SellTicketRegisterResultCopyWith<$Res> {
  factory _$SellTicketRegisterResultCopyWith(_SellTicketRegisterResult value, $Res Function(_SellTicketRegisterResult) _then) = __$SellTicketRegisterResultCopyWithImpl;
@override @useResult
$Res call({
 int ticketId, String status, String message, List<TicketImageEntity>? images
});




}
/// @nodoc
class __$SellTicketRegisterResultCopyWithImpl<$Res>
    implements _$SellTicketRegisterResultCopyWith<$Res> {
  __$SellTicketRegisterResultCopyWithImpl(this._self, this._then);

  final _SellTicketRegisterResult _self;
  final $Res Function(_SellTicketRegisterResult) _then;

/// Create a copy of SellTicketRegisterResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? ticketId = null,Object? status = null,Object? message = null,Object? images = freezed,}) {
  return _then(_SellTicketRegisterResult(
ticketId: null == ticketId ? _self.ticketId : ticketId // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,images: freezed == images ? _self._images : images // ignore: cast_nullable_to_non_nullable
as List<TicketImageEntity>?,
  ));
}


}

/// @nodoc
mixin _$SellTicketCancelResult {

 int get ticketId; String get status; String get message;
/// Create a copy of SellTicketCancelResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SellTicketCancelResultCopyWith<SellTicketCancelResult> get copyWith => _$SellTicketCancelResultCopyWithImpl<SellTicketCancelResult>(this as SellTicketCancelResult, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SellTicketCancelResult&&(identical(other.ticketId, ticketId) || other.ticketId == ticketId)&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,ticketId,status,message);

@override
String toString() {
  return 'SellTicketCancelResult(ticketId: $ticketId, status: $status, message: $message)';
}


}

/// @nodoc
abstract mixin class $SellTicketCancelResultCopyWith<$Res>  {
  factory $SellTicketCancelResultCopyWith(SellTicketCancelResult value, $Res Function(SellTicketCancelResult) _then) = _$SellTicketCancelResultCopyWithImpl;
@useResult
$Res call({
 int ticketId, String status, String message
});




}
/// @nodoc
class _$SellTicketCancelResultCopyWithImpl<$Res>
    implements $SellTicketCancelResultCopyWith<$Res> {
  _$SellTicketCancelResultCopyWithImpl(this._self, this._then);

  final SellTicketCancelResult _self;
  final $Res Function(SellTicketCancelResult) _then;

/// Create a copy of SellTicketCancelResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? ticketId = null,Object? status = null,Object? message = null,}) {
  return _then(_self.copyWith(
ticketId: null == ticketId ? _self.ticketId : ticketId // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [SellTicketCancelResult].
extension SellTicketCancelResultPatterns on SellTicketCancelResult {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SellTicketCancelResult value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SellTicketCancelResult() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SellTicketCancelResult value)  $default,){
final _that = this;
switch (_that) {
case _SellTicketCancelResult():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SellTicketCancelResult value)?  $default,){
final _that = this;
switch (_that) {
case _SellTicketCancelResult() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int ticketId,  String status,  String message)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SellTicketCancelResult() when $default != null:
return $default(_that.ticketId,_that.status,_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int ticketId,  String status,  String message)  $default,) {final _that = this;
switch (_that) {
case _SellTicketCancelResult():
return $default(_that.ticketId,_that.status,_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int ticketId,  String status,  String message)?  $default,) {final _that = this;
switch (_that) {
case _SellTicketCancelResult() when $default != null:
return $default(_that.ticketId,_that.status,_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _SellTicketCancelResult implements SellTicketCancelResult {
  const _SellTicketCancelResult({required this.ticketId, required this.status, required this.message});
  

@override final  int ticketId;
@override final  String status;
@override final  String message;

/// Create a copy of SellTicketCancelResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SellTicketCancelResultCopyWith<_SellTicketCancelResult> get copyWith => __$SellTicketCancelResultCopyWithImpl<_SellTicketCancelResult>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SellTicketCancelResult&&(identical(other.ticketId, ticketId) || other.ticketId == ticketId)&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,ticketId,status,message);

@override
String toString() {
  return 'SellTicketCancelResult(ticketId: $ticketId, status: $status, message: $message)';
}


}

/// @nodoc
abstract mixin class _$SellTicketCancelResultCopyWith<$Res> implements $SellTicketCancelResultCopyWith<$Res> {
  factory _$SellTicketCancelResultCopyWith(_SellTicketCancelResult value, $Res Function(_SellTicketCancelResult) _then) = __$SellTicketCancelResultCopyWithImpl;
@override @useResult
$Res call({
 int ticketId, String status, String message
});




}
/// @nodoc
class __$SellTicketCancelResultCopyWithImpl<$Res>
    implements _$SellTicketCancelResultCopyWith<$Res> {
  __$SellTicketCancelResultCopyWithImpl(this._self, this._then);

  final _SellTicketCancelResult _self;
  final $Res Function(_SellTicketCancelResult) _then;

/// Create a copy of SellTicketCancelResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? ticketId = null,Object? status = null,Object? message = null,}) {
  return _then(_SellTicketCancelResult(
ticketId: null == ticketId ? _self.ticketId : ticketId // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
