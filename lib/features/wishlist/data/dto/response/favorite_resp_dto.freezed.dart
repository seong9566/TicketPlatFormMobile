// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favorite_resp_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FavoriteRespDto {

 int get ticketId; int? get seatGradeId; String? get seatGradeName; String? get area; String? get row; int get price; int get originalPrice; int get remainingQuantity; bool? get isConsecutive; int? get tradeMethodId; String? get tradeMethodName; bool? get hasTicket; String get createdAt; String get favoritedAt; String? get eventTitle; String? get eventDate; String? get venueName; String? get eventPosterImageUrl; TicketingSellerRespDto get seller;
/// Create a copy of FavoriteRespDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FavoriteRespDtoCopyWith<FavoriteRespDto> get copyWith => _$FavoriteRespDtoCopyWithImpl<FavoriteRespDto>(this as FavoriteRespDto, _$identity);

  /// Serializes this FavoriteRespDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FavoriteRespDto&&(identical(other.ticketId, ticketId) || other.ticketId == ticketId)&&(identical(other.seatGradeId, seatGradeId) || other.seatGradeId == seatGradeId)&&(identical(other.seatGradeName, seatGradeName) || other.seatGradeName == seatGradeName)&&(identical(other.area, area) || other.area == area)&&(identical(other.row, row) || other.row == row)&&(identical(other.price, price) || other.price == price)&&(identical(other.originalPrice, originalPrice) || other.originalPrice == originalPrice)&&(identical(other.remainingQuantity, remainingQuantity) || other.remainingQuantity == remainingQuantity)&&(identical(other.isConsecutive, isConsecutive) || other.isConsecutive == isConsecutive)&&(identical(other.tradeMethodId, tradeMethodId) || other.tradeMethodId == tradeMethodId)&&(identical(other.tradeMethodName, tradeMethodName) || other.tradeMethodName == tradeMethodName)&&(identical(other.hasTicket, hasTicket) || other.hasTicket == hasTicket)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.favoritedAt, favoritedAt) || other.favoritedAt == favoritedAt)&&(identical(other.eventTitle, eventTitle) || other.eventTitle == eventTitle)&&(identical(other.eventDate, eventDate) || other.eventDate == eventDate)&&(identical(other.venueName, venueName) || other.venueName == venueName)&&(identical(other.eventPosterImageUrl, eventPosterImageUrl) || other.eventPosterImageUrl == eventPosterImageUrl)&&(identical(other.seller, seller) || other.seller == seller));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,ticketId,seatGradeId,seatGradeName,area,row,price,originalPrice,remainingQuantity,isConsecutive,tradeMethodId,tradeMethodName,hasTicket,createdAt,favoritedAt,eventTitle,eventDate,venueName,eventPosterImageUrl,seller]);

@override
String toString() {
  return 'FavoriteRespDto(ticketId: $ticketId, seatGradeId: $seatGradeId, seatGradeName: $seatGradeName, area: $area, row: $row, price: $price, originalPrice: $originalPrice, remainingQuantity: $remainingQuantity, isConsecutive: $isConsecutive, tradeMethodId: $tradeMethodId, tradeMethodName: $tradeMethodName, hasTicket: $hasTicket, createdAt: $createdAt, favoritedAt: $favoritedAt, eventTitle: $eventTitle, eventDate: $eventDate, venueName: $venueName, eventPosterImageUrl: $eventPosterImageUrl, seller: $seller)';
}


}

/// @nodoc
abstract mixin class $FavoriteRespDtoCopyWith<$Res>  {
  factory $FavoriteRespDtoCopyWith(FavoriteRespDto value, $Res Function(FavoriteRespDto) _then) = _$FavoriteRespDtoCopyWithImpl;
@useResult
$Res call({
 int ticketId, int? seatGradeId, String? seatGradeName, String? area, String? row, int price, int originalPrice, int remainingQuantity, bool? isConsecutive, int? tradeMethodId, String? tradeMethodName, bool? hasTicket, String createdAt, String favoritedAt, String? eventTitle, String? eventDate, String? venueName, String? eventPosterImageUrl, TicketingSellerRespDto seller
});


$TicketingSellerRespDtoCopyWith<$Res> get seller;

}
/// @nodoc
class _$FavoriteRespDtoCopyWithImpl<$Res>
    implements $FavoriteRespDtoCopyWith<$Res> {
  _$FavoriteRespDtoCopyWithImpl(this._self, this._then);

  final FavoriteRespDto _self;
  final $Res Function(FavoriteRespDto) _then;

/// Create a copy of FavoriteRespDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? ticketId = null,Object? seatGradeId = freezed,Object? seatGradeName = freezed,Object? area = freezed,Object? row = freezed,Object? price = null,Object? originalPrice = null,Object? remainingQuantity = null,Object? isConsecutive = freezed,Object? tradeMethodId = freezed,Object? tradeMethodName = freezed,Object? hasTicket = freezed,Object? createdAt = null,Object? favoritedAt = null,Object? eventTitle = freezed,Object? eventDate = freezed,Object? venueName = freezed,Object? eventPosterImageUrl = freezed,Object? seller = null,}) {
  return _then(_self.copyWith(
ticketId: null == ticketId ? _self.ticketId : ticketId // ignore: cast_nullable_to_non_nullable
as int,seatGradeId: freezed == seatGradeId ? _self.seatGradeId : seatGradeId // ignore: cast_nullable_to_non_nullable
as int?,seatGradeName: freezed == seatGradeName ? _self.seatGradeName : seatGradeName // ignore: cast_nullable_to_non_nullable
as String?,area: freezed == area ? _self.area : area // ignore: cast_nullable_to_non_nullable
as String?,row: freezed == row ? _self.row : row // ignore: cast_nullable_to_non_nullable
as String?,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,originalPrice: null == originalPrice ? _self.originalPrice : originalPrice // ignore: cast_nullable_to_non_nullable
as int,remainingQuantity: null == remainingQuantity ? _self.remainingQuantity : remainingQuantity // ignore: cast_nullable_to_non_nullable
as int,isConsecutive: freezed == isConsecutive ? _self.isConsecutive : isConsecutive // ignore: cast_nullable_to_non_nullable
as bool?,tradeMethodId: freezed == tradeMethodId ? _self.tradeMethodId : tradeMethodId // ignore: cast_nullable_to_non_nullable
as int?,tradeMethodName: freezed == tradeMethodName ? _self.tradeMethodName : tradeMethodName // ignore: cast_nullable_to_non_nullable
as String?,hasTicket: freezed == hasTicket ? _self.hasTicket : hasTicket // ignore: cast_nullable_to_non_nullable
as bool?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,favoritedAt: null == favoritedAt ? _self.favoritedAt : favoritedAt // ignore: cast_nullable_to_non_nullable
as String,eventTitle: freezed == eventTitle ? _self.eventTitle : eventTitle // ignore: cast_nullable_to_non_nullable
as String?,eventDate: freezed == eventDate ? _self.eventDate : eventDate // ignore: cast_nullable_to_non_nullable
as String?,venueName: freezed == venueName ? _self.venueName : venueName // ignore: cast_nullable_to_non_nullable
as String?,eventPosterImageUrl: freezed == eventPosterImageUrl ? _self.eventPosterImageUrl : eventPosterImageUrl // ignore: cast_nullable_to_non_nullable
as String?,seller: null == seller ? _self.seller : seller // ignore: cast_nullable_to_non_nullable
as TicketingSellerRespDto,
  ));
}
/// Create a copy of FavoriteRespDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TicketingSellerRespDtoCopyWith<$Res> get seller {
  
  return $TicketingSellerRespDtoCopyWith<$Res>(_self.seller, (value) {
    return _then(_self.copyWith(seller: value));
  });
}
}


/// Adds pattern-matching-related methods to [FavoriteRespDto].
extension FavoriteRespDtoPatterns on FavoriteRespDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FavoriteRespDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FavoriteRespDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FavoriteRespDto value)  $default,){
final _that = this;
switch (_that) {
case _FavoriteRespDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FavoriteRespDto value)?  $default,){
final _that = this;
switch (_that) {
case _FavoriteRespDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int ticketId,  int? seatGradeId,  String? seatGradeName,  String? area,  String? row,  int price,  int originalPrice,  int remainingQuantity,  bool? isConsecutive,  int? tradeMethodId,  String? tradeMethodName,  bool? hasTicket,  String createdAt,  String favoritedAt,  String? eventTitle,  String? eventDate,  String? venueName,  String? eventPosterImageUrl,  TicketingSellerRespDto seller)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FavoriteRespDto() when $default != null:
return $default(_that.ticketId,_that.seatGradeId,_that.seatGradeName,_that.area,_that.row,_that.price,_that.originalPrice,_that.remainingQuantity,_that.isConsecutive,_that.tradeMethodId,_that.tradeMethodName,_that.hasTicket,_that.createdAt,_that.favoritedAt,_that.eventTitle,_that.eventDate,_that.venueName,_that.eventPosterImageUrl,_that.seller);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int ticketId,  int? seatGradeId,  String? seatGradeName,  String? area,  String? row,  int price,  int originalPrice,  int remainingQuantity,  bool? isConsecutive,  int? tradeMethodId,  String? tradeMethodName,  bool? hasTicket,  String createdAt,  String favoritedAt,  String? eventTitle,  String? eventDate,  String? venueName,  String? eventPosterImageUrl,  TicketingSellerRespDto seller)  $default,) {final _that = this;
switch (_that) {
case _FavoriteRespDto():
return $default(_that.ticketId,_that.seatGradeId,_that.seatGradeName,_that.area,_that.row,_that.price,_that.originalPrice,_that.remainingQuantity,_that.isConsecutive,_that.tradeMethodId,_that.tradeMethodName,_that.hasTicket,_that.createdAt,_that.favoritedAt,_that.eventTitle,_that.eventDate,_that.venueName,_that.eventPosterImageUrl,_that.seller);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int ticketId,  int? seatGradeId,  String? seatGradeName,  String? area,  String? row,  int price,  int originalPrice,  int remainingQuantity,  bool? isConsecutive,  int? tradeMethodId,  String? tradeMethodName,  bool? hasTicket,  String createdAt,  String favoritedAt,  String? eventTitle,  String? eventDate,  String? venueName,  String? eventPosterImageUrl,  TicketingSellerRespDto seller)?  $default,) {final _that = this;
switch (_that) {
case _FavoriteRespDto() when $default != null:
return $default(_that.ticketId,_that.seatGradeId,_that.seatGradeName,_that.area,_that.row,_that.price,_that.originalPrice,_that.remainingQuantity,_that.isConsecutive,_that.tradeMethodId,_that.tradeMethodName,_that.hasTicket,_that.createdAt,_that.favoritedAt,_that.eventTitle,_that.eventDate,_that.venueName,_that.eventPosterImageUrl,_that.seller);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FavoriteRespDto implements FavoriteRespDto {
  const _FavoriteRespDto({required this.ticketId, this.seatGradeId, this.seatGradeName, this.area, this.row, required this.price, required this.originalPrice, required this.remainingQuantity, this.isConsecutive, this.tradeMethodId, this.tradeMethodName, this.hasTicket, required this.createdAt, required this.favoritedAt, this.eventTitle, this.eventDate, this.venueName, this.eventPosterImageUrl, required this.seller});
  factory _FavoriteRespDto.fromJson(Map<String, dynamic> json) => _$FavoriteRespDtoFromJson(json);

@override final  int ticketId;
@override final  int? seatGradeId;
@override final  String? seatGradeName;
@override final  String? area;
@override final  String? row;
@override final  int price;
@override final  int originalPrice;
@override final  int remainingQuantity;
@override final  bool? isConsecutive;
@override final  int? tradeMethodId;
@override final  String? tradeMethodName;
@override final  bool? hasTicket;
@override final  String createdAt;
@override final  String favoritedAt;
@override final  String? eventTitle;
@override final  String? eventDate;
@override final  String? venueName;
@override final  String? eventPosterImageUrl;
@override final  TicketingSellerRespDto seller;

/// Create a copy of FavoriteRespDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FavoriteRespDtoCopyWith<_FavoriteRespDto> get copyWith => __$FavoriteRespDtoCopyWithImpl<_FavoriteRespDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FavoriteRespDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FavoriteRespDto&&(identical(other.ticketId, ticketId) || other.ticketId == ticketId)&&(identical(other.seatGradeId, seatGradeId) || other.seatGradeId == seatGradeId)&&(identical(other.seatGradeName, seatGradeName) || other.seatGradeName == seatGradeName)&&(identical(other.area, area) || other.area == area)&&(identical(other.row, row) || other.row == row)&&(identical(other.price, price) || other.price == price)&&(identical(other.originalPrice, originalPrice) || other.originalPrice == originalPrice)&&(identical(other.remainingQuantity, remainingQuantity) || other.remainingQuantity == remainingQuantity)&&(identical(other.isConsecutive, isConsecutive) || other.isConsecutive == isConsecutive)&&(identical(other.tradeMethodId, tradeMethodId) || other.tradeMethodId == tradeMethodId)&&(identical(other.tradeMethodName, tradeMethodName) || other.tradeMethodName == tradeMethodName)&&(identical(other.hasTicket, hasTicket) || other.hasTicket == hasTicket)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.favoritedAt, favoritedAt) || other.favoritedAt == favoritedAt)&&(identical(other.eventTitle, eventTitle) || other.eventTitle == eventTitle)&&(identical(other.eventDate, eventDate) || other.eventDate == eventDate)&&(identical(other.venueName, venueName) || other.venueName == venueName)&&(identical(other.eventPosterImageUrl, eventPosterImageUrl) || other.eventPosterImageUrl == eventPosterImageUrl)&&(identical(other.seller, seller) || other.seller == seller));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,ticketId,seatGradeId,seatGradeName,area,row,price,originalPrice,remainingQuantity,isConsecutive,tradeMethodId,tradeMethodName,hasTicket,createdAt,favoritedAt,eventTitle,eventDate,venueName,eventPosterImageUrl,seller]);

@override
String toString() {
  return 'FavoriteRespDto(ticketId: $ticketId, seatGradeId: $seatGradeId, seatGradeName: $seatGradeName, area: $area, row: $row, price: $price, originalPrice: $originalPrice, remainingQuantity: $remainingQuantity, isConsecutive: $isConsecutive, tradeMethodId: $tradeMethodId, tradeMethodName: $tradeMethodName, hasTicket: $hasTicket, createdAt: $createdAt, favoritedAt: $favoritedAt, eventTitle: $eventTitle, eventDate: $eventDate, venueName: $venueName, eventPosterImageUrl: $eventPosterImageUrl, seller: $seller)';
}


}

/// @nodoc
abstract mixin class _$FavoriteRespDtoCopyWith<$Res> implements $FavoriteRespDtoCopyWith<$Res> {
  factory _$FavoriteRespDtoCopyWith(_FavoriteRespDto value, $Res Function(_FavoriteRespDto) _then) = __$FavoriteRespDtoCopyWithImpl;
@override @useResult
$Res call({
 int ticketId, int? seatGradeId, String? seatGradeName, String? area, String? row, int price, int originalPrice, int remainingQuantity, bool? isConsecutive, int? tradeMethodId, String? tradeMethodName, bool? hasTicket, String createdAt, String favoritedAt, String? eventTitle, String? eventDate, String? venueName, String? eventPosterImageUrl, TicketingSellerRespDto seller
});


@override $TicketingSellerRespDtoCopyWith<$Res> get seller;

}
/// @nodoc
class __$FavoriteRespDtoCopyWithImpl<$Res>
    implements _$FavoriteRespDtoCopyWith<$Res> {
  __$FavoriteRespDtoCopyWithImpl(this._self, this._then);

  final _FavoriteRespDto _self;
  final $Res Function(_FavoriteRespDto) _then;

/// Create a copy of FavoriteRespDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? ticketId = null,Object? seatGradeId = freezed,Object? seatGradeName = freezed,Object? area = freezed,Object? row = freezed,Object? price = null,Object? originalPrice = null,Object? remainingQuantity = null,Object? isConsecutive = freezed,Object? tradeMethodId = freezed,Object? tradeMethodName = freezed,Object? hasTicket = freezed,Object? createdAt = null,Object? favoritedAt = null,Object? eventTitle = freezed,Object? eventDate = freezed,Object? venueName = freezed,Object? eventPosterImageUrl = freezed,Object? seller = null,}) {
  return _then(_FavoriteRespDto(
ticketId: null == ticketId ? _self.ticketId : ticketId // ignore: cast_nullable_to_non_nullable
as int,seatGradeId: freezed == seatGradeId ? _self.seatGradeId : seatGradeId // ignore: cast_nullable_to_non_nullable
as int?,seatGradeName: freezed == seatGradeName ? _self.seatGradeName : seatGradeName // ignore: cast_nullable_to_non_nullable
as String?,area: freezed == area ? _self.area : area // ignore: cast_nullable_to_non_nullable
as String?,row: freezed == row ? _self.row : row // ignore: cast_nullable_to_non_nullable
as String?,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,originalPrice: null == originalPrice ? _self.originalPrice : originalPrice // ignore: cast_nullable_to_non_nullable
as int,remainingQuantity: null == remainingQuantity ? _self.remainingQuantity : remainingQuantity // ignore: cast_nullable_to_non_nullable
as int,isConsecutive: freezed == isConsecutive ? _self.isConsecutive : isConsecutive // ignore: cast_nullable_to_non_nullable
as bool?,tradeMethodId: freezed == tradeMethodId ? _self.tradeMethodId : tradeMethodId // ignore: cast_nullable_to_non_nullable
as int?,tradeMethodName: freezed == tradeMethodName ? _self.tradeMethodName : tradeMethodName // ignore: cast_nullable_to_non_nullable
as String?,hasTicket: freezed == hasTicket ? _self.hasTicket : hasTicket // ignore: cast_nullable_to_non_nullable
as bool?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,favoritedAt: null == favoritedAt ? _self.favoritedAt : favoritedAt // ignore: cast_nullable_to_non_nullable
as String,eventTitle: freezed == eventTitle ? _self.eventTitle : eventTitle // ignore: cast_nullable_to_non_nullable
as String?,eventDate: freezed == eventDate ? _self.eventDate : eventDate // ignore: cast_nullable_to_non_nullable
as String?,venueName: freezed == venueName ? _self.venueName : venueName // ignore: cast_nullable_to_non_nullable
as String?,eventPosterImageUrl: freezed == eventPosterImageUrl ? _self.eventPosterImageUrl : eventPosterImageUrl // ignore: cast_nullable_to_non_nullable
as String?,seller: null == seller ? _self.seller : seller // ignore: cast_nullable_to_non_nullable
as TicketingSellerRespDto,
  ));
}

/// Create a copy of FavoriteRespDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TicketingSellerRespDtoCopyWith<$Res> get seller {
  
  return $TicketingSellerRespDtoCopyWith<$Res>(_self.seller, (value) {
    return _then(_self.copyWith(seller: value));
  });
}
}

// dart format on
