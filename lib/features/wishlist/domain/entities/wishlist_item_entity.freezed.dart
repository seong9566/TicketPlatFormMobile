// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wishlist_item_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$WishlistItemEntity {

 int get ticketId; String get ticketTitle; String? get seatInfo; String? get seatType; int get price; int get originalPrice; int get remainingQuantity; DateTime get createdAt; DateTime get favoritedAt; String get eventTitle; String get eventDate; String get venueName; String get eventPosterImageUrl; TicketingSellerEntity get seller;
/// Create a copy of WishlistItemEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WishlistItemEntityCopyWith<WishlistItemEntity> get copyWith => _$WishlistItemEntityCopyWithImpl<WishlistItemEntity>(this as WishlistItemEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WishlistItemEntity&&(identical(other.ticketId, ticketId) || other.ticketId == ticketId)&&(identical(other.ticketTitle, ticketTitle) || other.ticketTitle == ticketTitle)&&(identical(other.seatInfo, seatInfo) || other.seatInfo == seatInfo)&&(identical(other.seatType, seatType) || other.seatType == seatType)&&(identical(other.price, price) || other.price == price)&&(identical(other.originalPrice, originalPrice) || other.originalPrice == originalPrice)&&(identical(other.remainingQuantity, remainingQuantity) || other.remainingQuantity == remainingQuantity)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.favoritedAt, favoritedAt) || other.favoritedAt == favoritedAt)&&(identical(other.eventTitle, eventTitle) || other.eventTitle == eventTitle)&&(identical(other.eventDate, eventDate) || other.eventDate == eventDate)&&(identical(other.venueName, venueName) || other.venueName == venueName)&&(identical(other.eventPosterImageUrl, eventPosterImageUrl) || other.eventPosterImageUrl == eventPosterImageUrl)&&(identical(other.seller, seller) || other.seller == seller));
}


@override
int get hashCode => Object.hash(runtimeType,ticketId,ticketTitle,seatInfo,seatType,price,originalPrice,remainingQuantity,createdAt,favoritedAt,eventTitle,eventDate,venueName,eventPosterImageUrl,seller);

@override
String toString() {
  return 'WishlistItemEntity(ticketId: $ticketId, ticketTitle: $ticketTitle, seatInfo: $seatInfo, seatType: $seatType, price: $price, originalPrice: $originalPrice, remainingQuantity: $remainingQuantity, createdAt: $createdAt, favoritedAt: $favoritedAt, eventTitle: $eventTitle, eventDate: $eventDate, venueName: $venueName, eventPosterImageUrl: $eventPosterImageUrl, seller: $seller)';
}


}

/// @nodoc
abstract mixin class $WishlistItemEntityCopyWith<$Res>  {
  factory $WishlistItemEntityCopyWith(WishlistItemEntity value, $Res Function(WishlistItemEntity) _then) = _$WishlistItemEntityCopyWithImpl;
@useResult
$Res call({
 int ticketId, String ticketTitle, String? seatInfo, String? seatType, int price, int originalPrice, int remainingQuantity, DateTime createdAt, DateTime favoritedAt, String eventTitle, String eventDate, String venueName, String eventPosterImageUrl, TicketingSellerEntity seller
});


$TicketingSellerEntityCopyWith<$Res> get seller;

}
/// @nodoc
class _$WishlistItemEntityCopyWithImpl<$Res>
    implements $WishlistItemEntityCopyWith<$Res> {
  _$WishlistItemEntityCopyWithImpl(this._self, this._then);

  final WishlistItemEntity _self;
  final $Res Function(WishlistItemEntity) _then;

/// Create a copy of WishlistItemEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? ticketId = null,Object? ticketTitle = null,Object? seatInfo = freezed,Object? seatType = freezed,Object? price = null,Object? originalPrice = null,Object? remainingQuantity = null,Object? createdAt = null,Object? favoritedAt = null,Object? eventTitle = null,Object? eventDate = null,Object? venueName = null,Object? eventPosterImageUrl = null,Object? seller = null,}) {
  return _then(_self.copyWith(
ticketId: null == ticketId ? _self.ticketId : ticketId // ignore: cast_nullable_to_non_nullable
as int,ticketTitle: null == ticketTitle ? _self.ticketTitle : ticketTitle // ignore: cast_nullable_to_non_nullable
as String,seatInfo: freezed == seatInfo ? _self.seatInfo : seatInfo // ignore: cast_nullable_to_non_nullable
as String?,seatType: freezed == seatType ? _self.seatType : seatType // ignore: cast_nullable_to_non_nullable
as String?,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,originalPrice: null == originalPrice ? _self.originalPrice : originalPrice // ignore: cast_nullable_to_non_nullable
as int,remainingQuantity: null == remainingQuantity ? _self.remainingQuantity : remainingQuantity // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,favoritedAt: null == favoritedAt ? _self.favoritedAt : favoritedAt // ignore: cast_nullable_to_non_nullable
as DateTime,eventTitle: null == eventTitle ? _self.eventTitle : eventTitle // ignore: cast_nullable_to_non_nullable
as String,eventDate: null == eventDate ? _self.eventDate : eventDate // ignore: cast_nullable_to_non_nullable
as String,venueName: null == venueName ? _self.venueName : venueName // ignore: cast_nullable_to_non_nullable
as String,eventPosterImageUrl: null == eventPosterImageUrl ? _self.eventPosterImageUrl : eventPosterImageUrl // ignore: cast_nullable_to_non_nullable
as String,seller: null == seller ? _self.seller : seller // ignore: cast_nullable_to_non_nullable
as TicketingSellerEntity,
  ));
}
/// Create a copy of WishlistItemEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TicketingSellerEntityCopyWith<$Res> get seller {
  
  return $TicketingSellerEntityCopyWith<$Res>(_self.seller, (value) {
    return _then(_self.copyWith(seller: value));
  });
}
}


/// Adds pattern-matching-related methods to [WishlistItemEntity].
extension WishlistItemEntityPatterns on WishlistItemEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WishlistItemEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WishlistItemEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WishlistItemEntity value)  $default,){
final _that = this;
switch (_that) {
case _WishlistItemEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WishlistItemEntity value)?  $default,){
final _that = this;
switch (_that) {
case _WishlistItemEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int ticketId,  String ticketTitle,  String? seatInfo,  String? seatType,  int price,  int originalPrice,  int remainingQuantity,  DateTime createdAt,  DateTime favoritedAt,  String eventTitle,  String eventDate,  String venueName,  String eventPosterImageUrl,  TicketingSellerEntity seller)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WishlistItemEntity() when $default != null:
return $default(_that.ticketId,_that.ticketTitle,_that.seatInfo,_that.seatType,_that.price,_that.originalPrice,_that.remainingQuantity,_that.createdAt,_that.favoritedAt,_that.eventTitle,_that.eventDate,_that.venueName,_that.eventPosterImageUrl,_that.seller);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int ticketId,  String ticketTitle,  String? seatInfo,  String? seatType,  int price,  int originalPrice,  int remainingQuantity,  DateTime createdAt,  DateTime favoritedAt,  String eventTitle,  String eventDate,  String venueName,  String eventPosterImageUrl,  TicketingSellerEntity seller)  $default,) {final _that = this;
switch (_that) {
case _WishlistItemEntity():
return $default(_that.ticketId,_that.ticketTitle,_that.seatInfo,_that.seatType,_that.price,_that.originalPrice,_that.remainingQuantity,_that.createdAt,_that.favoritedAt,_that.eventTitle,_that.eventDate,_that.venueName,_that.eventPosterImageUrl,_that.seller);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int ticketId,  String ticketTitle,  String? seatInfo,  String? seatType,  int price,  int originalPrice,  int remainingQuantity,  DateTime createdAt,  DateTime favoritedAt,  String eventTitle,  String eventDate,  String venueName,  String eventPosterImageUrl,  TicketingSellerEntity seller)?  $default,) {final _that = this;
switch (_that) {
case _WishlistItemEntity() when $default != null:
return $default(_that.ticketId,_that.ticketTitle,_that.seatInfo,_that.seatType,_that.price,_that.originalPrice,_that.remainingQuantity,_that.createdAt,_that.favoritedAt,_that.eventTitle,_that.eventDate,_that.venueName,_that.eventPosterImageUrl,_that.seller);case _:
  return null;

}
}

}

/// @nodoc


class _WishlistItemEntity implements WishlistItemEntity {
  const _WishlistItemEntity({required this.ticketId, required this.ticketTitle, required this.seatInfo, required this.seatType, required this.price, required this.originalPrice, required this.remainingQuantity, required this.createdAt, required this.favoritedAt, required this.eventTitle, required this.eventDate, required this.venueName, required this.eventPosterImageUrl, required this.seller});
  

@override final  int ticketId;
@override final  String ticketTitle;
@override final  String? seatInfo;
@override final  String? seatType;
@override final  int price;
@override final  int originalPrice;
@override final  int remainingQuantity;
@override final  DateTime createdAt;
@override final  DateTime favoritedAt;
@override final  String eventTitle;
@override final  String eventDate;
@override final  String venueName;
@override final  String eventPosterImageUrl;
@override final  TicketingSellerEntity seller;

/// Create a copy of WishlistItemEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WishlistItemEntityCopyWith<_WishlistItemEntity> get copyWith => __$WishlistItemEntityCopyWithImpl<_WishlistItemEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WishlistItemEntity&&(identical(other.ticketId, ticketId) || other.ticketId == ticketId)&&(identical(other.ticketTitle, ticketTitle) || other.ticketTitle == ticketTitle)&&(identical(other.seatInfo, seatInfo) || other.seatInfo == seatInfo)&&(identical(other.seatType, seatType) || other.seatType == seatType)&&(identical(other.price, price) || other.price == price)&&(identical(other.originalPrice, originalPrice) || other.originalPrice == originalPrice)&&(identical(other.remainingQuantity, remainingQuantity) || other.remainingQuantity == remainingQuantity)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.favoritedAt, favoritedAt) || other.favoritedAt == favoritedAt)&&(identical(other.eventTitle, eventTitle) || other.eventTitle == eventTitle)&&(identical(other.eventDate, eventDate) || other.eventDate == eventDate)&&(identical(other.venueName, venueName) || other.venueName == venueName)&&(identical(other.eventPosterImageUrl, eventPosterImageUrl) || other.eventPosterImageUrl == eventPosterImageUrl)&&(identical(other.seller, seller) || other.seller == seller));
}


@override
int get hashCode => Object.hash(runtimeType,ticketId,ticketTitle,seatInfo,seatType,price,originalPrice,remainingQuantity,createdAt,favoritedAt,eventTitle,eventDate,venueName,eventPosterImageUrl,seller);

@override
String toString() {
  return 'WishlistItemEntity(ticketId: $ticketId, ticketTitle: $ticketTitle, seatInfo: $seatInfo, seatType: $seatType, price: $price, originalPrice: $originalPrice, remainingQuantity: $remainingQuantity, createdAt: $createdAt, favoritedAt: $favoritedAt, eventTitle: $eventTitle, eventDate: $eventDate, venueName: $venueName, eventPosterImageUrl: $eventPosterImageUrl, seller: $seller)';
}


}

/// @nodoc
abstract mixin class _$WishlistItemEntityCopyWith<$Res> implements $WishlistItemEntityCopyWith<$Res> {
  factory _$WishlistItemEntityCopyWith(_WishlistItemEntity value, $Res Function(_WishlistItemEntity) _then) = __$WishlistItemEntityCopyWithImpl;
@override @useResult
$Res call({
 int ticketId, String ticketTitle, String? seatInfo, String? seatType, int price, int originalPrice, int remainingQuantity, DateTime createdAt, DateTime favoritedAt, String eventTitle, String eventDate, String venueName, String eventPosterImageUrl, TicketingSellerEntity seller
});


@override $TicketingSellerEntityCopyWith<$Res> get seller;

}
/// @nodoc
class __$WishlistItemEntityCopyWithImpl<$Res>
    implements _$WishlistItemEntityCopyWith<$Res> {
  __$WishlistItemEntityCopyWithImpl(this._self, this._then);

  final _WishlistItemEntity _self;
  final $Res Function(_WishlistItemEntity) _then;

/// Create a copy of WishlistItemEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? ticketId = null,Object? ticketTitle = null,Object? seatInfo = freezed,Object? seatType = freezed,Object? price = null,Object? originalPrice = null,Object? remainingQuantity = null,Object? createdAt = null,Object? favoritedAt = null,Object? eventTitle = null,Object? eventDate = null,Object? venueName = null,Object? eventPosterImageUrl = null,Object? seller = null,}) {
  return _then(_WishlistItemEntity(
ticketId: null == ticketId ? _self.ticketId : ticketId // ignore: cast_nullable_to_non_nullable
as int,ticketTitle: null == ticketTitle ? _self.ticketTitle : ticketTitle // ignore: cast_nullable_to_non_nullable
as String,seatInfo: freezed == seatInfo ? _self.seatInfo : seatInfo // ignore: cast_nullable_to_non_nullable
as String?,seatType: freezed == seatType ? _self.seatType : seatType // ignore: cast_nullable_to_non_nullable
as String?,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,originalPrice: null == originalPrice ? _self.originalPrice : originalPrice // ignore: cast_nullable_to_non_nullable
as int,remainingQuantity: null == remainingQuantity ? _self.remainingQuantity : remainingQuantity // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,favoritedAt: null == favoritedAt ? _self.favoritedAt : favoritedAt // ignore: cast_nullable_to_non_nullable
as DateTime,eventTitle: null == eventTitle ? _self.eventTitle : eventTitle // ignore: cast_nullable_to_non_nullable
as String,eventDate: null == eventDate ? _self.eventDate : eventDate // ignore: cast_nullable_to_non_nullable
as String,venueName: null == venueName ? _self.venueName : venueName // ignore: cast_nullable_to_non_nullable
as String,eventPosterImageUrl: null == eventPosterImageUrl ? _self.eventPosterImageUrl : eventPosterImageUrl // ignore: cast_nullable_to_non_nullable
as String,seller: null == seller ? _self.seller : seller // ignore: cast_nullable_to_non_nullable
as TicketingSellerEntity,
  ));
}

/// Create a copy of WishlistItemEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TicketingSellerEntityCopyWith<$Res> get seller {
  
  return $TicketingSellerEntityCopyWith<$Res>(_self.seller, (value) {
    return _then(_self.copyWith(seller: value));
  });
}
}

// dart format on
