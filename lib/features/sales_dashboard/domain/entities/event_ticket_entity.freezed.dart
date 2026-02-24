// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event_ticket_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$EventTicketEntity {

 int get ticketId; String? get seatInfo; int get quantity; int get remainingQuantity; int get price; int get originalPrice; String get statusCode; String get statusName; int? get transactionId; String? get thumbnailUrl; DateTime get createdAt;
/// Create a copy of EventTicketEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EventTicketEntityCopyWith<EventTicketEntity> get copyWith => _$EventTicketEntityCopyWithImpl<EventTicketEntity>(this as EventTicketEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EventTicketEntity&&(identical(other.ticketId, ticketId) || other.ticketId == ticketId)&&(identical(other.seatInfo, seatInfo) || other.seatInfo == seatInfo)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.remainingQuantity, remainingQuantity) || other.remainingQuantity == remainingQuantity)&&(identical(other.price, price) || other.price == price)&&(identical(other.originalPrice, originalPrice) || other.originalPrice == originalPrice)&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.statusName, statusName) || other.statusName == statusName)&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId)&&(identical(other.thumbnailUrl, thumbnailUrl) || other.thumbnailUrl == thumbnailUrl)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}


@override
int get hashCode => Object.hash(runtimeType,ticketId,seatInfo,quantity,remainingQuantity,price,originalPrice,statusCode,statusName,transactionId,thumbnailUrl,createdAt);

@override
String toString() {
  return 'EventTicketEntity(ticketId: $ticketId, seatInfo: $seatInfo, quantity: $quantity, remainingQuantity: $remainingQuantity, price: $price, originalPrice: $originalPrice, statusCode: $statusCode, statusName: $statusName, transactionId: $transactionId, thumbnailUrl: $thumbnailUrl, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $EventTicketEntityCopyWith<$Res>  {
  factory $EventTicketEntityCopyWith(EventTicketEntity value, $Res Function(EventTicketEntity) _then) = _$EventTicketEntityCopyWithImpl;
@useResult
$Res call({
 int ticketId, String? seatInfo, int quantity, int remainingQuantity, int price, int originalPrice, String statusCode, String statusName, int? transactionId, String? thumbnailUrl, DateTime createdAt
});




}
/// @nodoc
class _$EventTicketEntityCopyWithImpl<$Res>
    implements $EventTicketEntityCopyWith<$Res> {
  _$EventTicketEntityCopyWithImpl(this._self, this._then);

  final EventTicketEntity _self;
  final $Res Function(EventTicketEntity) _then;

/// Create a copy of EventTicketEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? ticketId = null,Object? seatInfo = freezed,Object? quantity = null,Object? remainingQuantity = null,Object? price = null,Object? originalPrice = null,Object? statusCode = null,Object? statusName = null,Object? transactionId = freezed,Object? thumbnailUrl = freezed,Object? createdAt = null,}) {
  return _then(_self.copyWith(
ticketId: null == ticketId ? _self.ticketId : ticketId // ignore: cast_nullable_to_non_nullable
as int,seatInfo: freezed == seatInfo ? _self.seatInfo : seatInfo // ignore: cast_nullable_to_non_nullable
as String?,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,remainingQuantity: null == remainingQuantity ? _self.remainingQuantity : remainingQuantity // ignore: cast_nullable_to_non_nullable
as int,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,originalPrice: null == originalPrice ? _self.originalPrice : originalPrice // ignore: cast_nullable_to_non_nullable
as int,statusCode: null == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as String,statusName: null == statusName ? _self.statusName : statusName // ignore: cast_nullable_to_non_nullable
as String,transactionId: freezed == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as int?,thumbnailUrl: freezed == thumbnailUrl ? _self.thumbnailUrl : thumbnailUrl // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [EventTicketEntity].
extension EventTicketEntityPatterns on EventTicketEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EventTicketEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EventTicketEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EventTicketEntity value)  $default,){
final _that = this;
switch (_that) {
case _EventTicketEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EventTicketEntity value)?  $default,){
final _that = this;
switch (_that) {
case _EventTicketEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int ticketId,  String? seatInfo,  int quantity,  int remainingQuantity,  int price,  int originalPrice,  String statusCode,  String statusName,  int? transactionId,  String? thumbnailUrl,  DateTime createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EventTicketEntity() when $default != null:
return $default(_that.ticketId,_that.seatInfo,_that.quantity,_that.remainingQuantity,_that.price,_that.originalPrice,_that.statusCode,_that.statusName,_that.transactionId,_that.thumbnailUrl,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int ticketId,  String? seatInfo,  int quantity,  int remainingQuantity,  int price,  int originalPrice,  String statusCode,  String statusName,  int? transactionId,  String? thumbnailUrl,  DateTime createdAt)  $default,) {final _that = this;
switch (_that) {
case _EventTicketEntity():
return $default(_that.ticketId,_that.seatInfo,_that.quantity,_that.remainingQuantity,_that.price,_that.originalPrice,_that.statusCode,_that.statusName,_that.transactionId,_that.thumbnailUrl,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int ticketId,  String? seatInfo,  int quantity,  int remainingQuantity,  int price,  int originalPrice,  String statusCode,  String statusName,  int? transactionId,  String? thumbnailUrl,  DateTime createdAt)?  $default,) {final _that = this;
switch (_that) {
case _EventTicketEntity() when $default != null:
return $default(_that.ticketId,_that.seatInfo,_that.quantity,_that.remainingQuantity,_that.price,_that.originalPrice,_that.statusCode,_that.statusName,_that.transactionId,_that.thumbnailUrl,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc


class _EventTicketEntity implements EventTicketEntity {
  const _EventTicketEntity({required this.ticketId, this.seatInfo, required this.quantity, required this.remainingQuantity, required this.price, required this.originalPrice, required this.statusCode, required this.statusName, this.transactionId, this.thumbnailUrl, required this.createdAt});
  

@override final  int ticketId;
@override final  String? seatInfo;
@override final  int quantity;
@override final  int remainingQuantity;
@override final  int price;
@override final  int originalPrice;
@override final  String statusCode;
@override final  String statusName;
@override final  int? transactionId;
@override final  String? thumbnailUrl;
@override final  DateTime createdAt;

/// Create a copy of EventTicketEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EventTicketEntityCopyWith<_EventTicketEntity> get copyWith => __$EventTicketEntityCopyWithImpl<_EventTicketEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EventTicketEntity&&(identical(other.ticketId, ticketId) || other.ticketId == ticketId)&&(identical(other.seatInfo, seatInfo) || other.seatInfo == seatInfo)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.remainingQuantity, remainingQuantity) || other.remainingQuantity == remainingQuantity)&&(identical(other.price, price) || other.price == price)&&(identical(other.originalPrice, originalPrice) || other.originalPrice == originalPrice)&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.statusName, statusName) || other.statusName == statusName)&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId)&&(identical(other.thumbnailUrl, thumbnailUrl) || other.thumbnailUrl == thumbnailUrl)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}


@override
int get hashCode => Object.hash(runtimeType,ticketId,seatInfo,quantity,remainingQuantity,price,originalPrice,statusCode,statusName,transactionId,thumbnailUrl,createdAt);

@override
String toString() {
  return 'EventTicketEntity(ticketId: $ticketId, seatInfo: $seatInfo, quantity: $quantity, remainingQuantity: $remainingQuantity, price: $price, originalPrice: $originalPrice, statusCode: $statusCode, statusName: $statusName, transactionId: $transactionId, thumbnailUrl: $thumbnailUrl, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$EventTicketEntityCopyWith<$Res> implements $EventTicketEntityCopyWith<$Res> {
  factory _$EventTicketEntityCopyWith(_EventTicketEntity value, $Res Function(_EventTicketEntity) _then) = __$EventTicketEntityCopyWithImpl;
@override @useResult
$Res call({
 int ticketId, String? seatInfo, int quantity, int remainingQuantity, int price, int originalPrice, String statusCode, String statusName, int? transactionId, String? thumbnailUrl, DateTime createdAt
});




}
/// @nodoc
class __$EventTicketEntityCopyWithImpl<$Res>
    implements _$EventTicketEntityCopyWith<$Res> {
  __$EventTicketEntityCopyWithImpl(this._self, this._then);

  final _EventTicketEntity _self;
  final $Res Function(_EventTicketEntity) _then;

/// Create a copy of EventTicketEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? ticketId = null,Object? seatInfo = freezed,Object? quantity = null,Object? remainingQuantity = null,Object? price = null,Object? originalPrice = null,Object? statusCode = null,Object? statusName = null,Object? transactionId = freezed,Object? thumbnailUrl = freezed,Object? createdAt = null,}) {
  return _then(_EventTicketEntity(
ticketId: null == ticketId ? _self.ticketId : ticketId // ignore: cast_nullable_to_non_nullable
as int,seatInfo: freezed == seatInfo ? _self.seatInfo : seatInfo // ignore: cast_nullable_to_non_nullable
as String?,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,remainingQuantity: null == remainingQuantity ? _self.remainingQuantity : remainingQuantity // ignore: cast_nullable_to_non_nullable
as int,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,originalPrice: null == originalPrice ? _self.originalPrice : originalPrice // ignore: cast_nullable_to_non_nullable
as int,statusCode: null == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as String,statusName: null == statusName ? _self.statusName : statusName // ignore: cast_nullable_to_non_nullable
as String,transactionId: freezed == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as int?,thumbnailUrl: freezed == thumbnailUrl ? _self.thumbnailUrl : thumbnailUrl // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

/// @nodoc
mixin _$EventTicketListEntity {

 int get eventId; String get eventTitle; List<EventTicketEntity> get tickets; int get page; int get size; int get totalCount; bool get hasMore;
/// Create a copy of EventTicketListEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EventTicketListEntityCopyWith<EventTicketListEntity> get copyWith => _$EventTicketListEntityCopyWithImpl<EventTicketListEntity>(this as EventTicketListEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EventTicketListEntity&&(identical(other.eventId, eventId) || other.eventId == eventId)&&(identical(other.eventTitle, eventTitle) || other.eventTitle == eventTitle)&&const DeepCollectionEquality().equals(other.tickets, tickets)&&(identical(other.page, page) || other.page == page)&&(identical(other.size, size) || other.size == size)&&(identical(other.totalCount, totalCount) || other.totalCount == totalCount)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore));
}


@override
int get hashCode => Object.hash(runtimeType,eventId,eventTitle,const DeepCollectionEquality().hash(tickets),page,size,totalCount,hasMore);

@override
String toString() {
  return 'EventTicketListEntity(eventId: $eventId, eventTitle: $eventTitle, tickets: $tickets, page: $page, size: $size, totalCount: $totalCount, hasMore: $hasMore)';
}


}

/// @nodoc
abstract mixin class $EventTicketListEntityCopyWith<$Res>  {
  factory $EventTicketListEntityCopyWith(EventTicketListEntity value, $Res Function(EventTicketListEntity) _then) = _$EventTicketListEntityCopyWithImpl;
@useResult
$Res call({
 int eventId, String eventTitle, List<EventTicketEntity> tickets, int page, int size, int totalCount, bool hasMore
});




}
/// @nodoc
class _$EventTicketListEntityCopyWithImpl<$Res>
    implements $EventTicketListEntityCopyWith<$Res> {
  _$EventTicketListEntityCopyWithImpl(this._self, this._then);

  final EventTicketListEntity _self;
  final $Res Function(EventTicketListEntity) _then;

/// Create a copy of EventTicketListEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? eventId = null,Object? eventTitle = null,Object? tickets = null,Object? page = null,Object? size = null,Object? totalCount = null,Object? hasMore = null,}) {
  return _then(_self.copyWith(
eventId: null == eventId ? _self.eventId : eventId // ignore: cast_nullable_to_non_nullable
as int,eventTitle: null == eventTitle ? _self.eventTitle : eventTitle // ignore: cast_nullable_to_non_nullable
as String,tickets: null == tickets ? _self.tickets : tickets // ignore: cast_nullable_to_non_nullable
as List<EventTicketEntity>,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,size: null == size ? _self.size : size // ignore: cast_nullable_to_non_nullable
as int,totalCount: null == totalCount ? _self.totalCount : totalCount // ignore: cast_nullable_to_non_nullable
as int,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [EventTicketListEntity].
extension EventTicketListEntityPatterns on EventTicketListEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EventTicketListEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EventTicketListEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EventTicketListEntity value)  $default,){
final _that = this;
switch (_that) {
case _EventTicketListEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EventTicketListEntity value)?  $default,){
final _that = this;
switch (_that) {
case _EventTicketListEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int eventId,  String eventTitle,  List<EventTicketEntity> tickets,  int page,  int size,  int totalCount,  bool hasMore)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EventTicketListEntity() when $default != null:
return $default(_that.eventId,_that.eventTitle,_that.tickets,_that.page,_that.size,_that.totalCount,_that.hasMore);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int eventId,  String eventTitle,  List<EventTicketEntity> tickets,  int page,  int size,  int totalCount,  bool hasMore)  $default,) {final _that = this;
switch (_that) {
case _EventTicketListEntity():
return $default(_that.eventId,_that.eventTitle,_that.tickets,_that.page,_that.size,_that.totalCount,_that.hasMore);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int eventId,  String eventTitle,  List<EventTicketEntity> tickets,  int page,  int size,  int totalCount,  bool hasMore)?  $default,) {final _that = this;
switch (_that) {
case _EventTicketListEntity() when $default != null:
return $default(_that.eventId,_that.eventTitle,_that.tickets,_that.page,_that.size,_that.totalCount,_that.hasMore);case _:
  return null;

}
}

}

/// @nodoc


class _EventTicketListEntity implements EventTicketListEntity {
  const _EventTicketListEntity({required this.eventId, required this.eventTitle, required final  List<EventTicketEntity> tickets, required this.page, required this.size, required this.totalCount, required this.hasMore}): _tickets = tickets;
  

@override final  int eventId;
@override final  String eventTitle;
 final  List<EventTicketEntity> _tickets;
@override List<EventTicketEntity> get tickets {
  if (_tickets is EqualUnmodifiableListView) return _tickets;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tickets);
}

@override final  int page;
@override final  int size;
@override final  int totalCount;
@override final  bool hasMore;

/// Create a copy of EventTicketListEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EventTicketListEntityCopyWith<_EventTicketListEntity> get copyWith => __$EventTicketListEntityCopyWithImpl<_EventTicketListEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EventTicketListEntity&&(identical(other.eventId, eventId) || other.eventId == eventId)&&(identical(other.eventTitle, eventTitle) || other.eventTitle == eventTitle)&&const DeepCollectionEquality().equals(other._tickets, _tickets)&&(identical(other.page, page) || other.page == page)&&(identical(other.size, size) || other.size == size)&&(identical(other.totalCount, totalCount) || other.totalCount == totalCount)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore));
}


@override
int get hashCode => Object.hash(runtimeType,eventId,eventTitle,const DeepCollectionEquality().hash(_tickets),page,size,totalCount,hasMore);

@override
String toString() {
  return 'EventTicketListEntity(eventId: $eventId, eventTitle: $eventTitle, tickets: $tickets, page: $page, size: $size, totalCount: $totalCount, hasMore: $hasMore)';
}


}

/// @nodoc
abstract mixin class _$EventTicketListEntityCopyWith<$Res> implements $EventTicketListEntityCopyWith<$Res> {
  factory _$EventTicketListEntityCopyWith(_EventTicketListEntity value, $Res Function(_EventTicketListEntity) _then) = __$EventTicketListEntityCopyWithImpl;
@override @useResult
$Res call({
 int eventId, String eventTitle, List<EventTicketEntity> tickets, int page, int size, int totalCount, bool hasMore
});




}
/// @nodoc
class __$EventTicketListEntityCopyWithImpl<$Res>
    implements _$EventTicketListEntityCopyWith<$Res> {
  __$EventTicketListEntityCopyWithImpl(this._self, this._then);

  final _EventTicketListEntity _self;
  final $Res Function(_EventTicketListEntity) _then;

/// Create a copy of EventTicketListEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? eventId = null,Object? eventTitle = null,Object? tickets = null,Object? page = null,Object? size = null,Object? totalCount = null,Object? hasMore = null,}) {
  return _then(_EventTicketListEntity(
eventId: null == eventId ? _self.eventId : eventId // ignore: cast_nullable_to_non_nullable
as int,eventTitle: null == eventTitle ? _self.eventTitle : eventTitle // ignore: cast_nullable_to_non_nullable
as String,tickets: null == tickets ? _self._tickets : tickets // ignore: cast_nullable_to_non_nullable
as List<EventTicketEntity>,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,size: null == size ? _self.size : size // ignore: cast_nullable_to_non_nullable
as int,totalCount: null == totalCount ? _self.totalCount : totalCount // ignore: cast_nullable_to_non_nullable
as int,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
