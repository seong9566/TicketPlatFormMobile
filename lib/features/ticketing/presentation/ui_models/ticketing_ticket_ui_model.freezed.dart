// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ticketing_ticket_ui_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TicketingTicketUiModel {

 int get ticketId; String get gradeName;// seatGradeName
 String? get seatInfo;// area + row 조합
 int get price; int get quantity; int get totalPrice; int get originalPrice; List<String> get tags;// features의 name들
 TicketingSellerUiModel get seller; String? get description; DateTime get createdAt; String? get tradeMethodName; bool? get hasTicket; bool? get isConsecutive; String get ticketCountInfo; List<String> get transactionFeatures; String? get listingImageUrl; bool get isFavorited;
/// Create a copy of TicketingTicketUiModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TicketingTicketUiModelCopyWith<TicketingTicketUiModel> get copyWith => _$TicketingTicketUiModelCopyWithImpl<TicketingTicketUiModel>(this as TicketingTicketUiModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TicketingTicketUiModel&&(identical(other.ticketId, ticketId) || other.ticketId == ticketId)&&(identical(other.gradeName, gradeName) || other.gradeName == gradeName)&&(identical(other.seatInfo, seatInfo) || other.seatInfo == seatInfo)&&(identical(other.price, price) || other.price == price)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.totalPrice, totalPrice) || other.totalPrice == totalPrice)&&(identical(other.originalPrice, originalPrice) || other.originalPrice == originalPrice)&&const DeepCollectionEquality().equals(other.tags, tags)&&(identical(other.seller, seller) || other.seller == seller)&&(identical(other.description, description) || other.description == description)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.tradeMethodName, tradeMethodName) || other.tradeMethodName == tradeMethodName)&&(identical(other.hasTicket, hasTicket) || other.hasTicket == hasTicket)&&(identical(other.isConsecutive, isConsecutive) || other.isConsecutive == isConsecutive)&&(identical(other.ticketCountInfo, ticketCountInfo) || other.ticketCountInfo == ticketCountInfo)&&const DeepCollectionEquality().equals(other.transactionFeatures, transactionFeatures)&&(identical(other.listingImageUrl, listingImageUrl) || other.listingImageUrl == listingImageUrl)&&(identical(other.isFavorited, isFavorited) || other.isFavorited == isFavorited));
}


@override
int get hashCode => Object.hash(runtimeType,ticketId,gradeName,seatInfo,price,quantity,totalPrice,originalPrice,const DeepCollectionEquality().hash(tags),seller,description,createdAt,tradeMethodName,hasTicket,isConsecutive,ticketCountInfo,const DeepCollectionEquality().hash(transactionFeatures),listingImageUrl,isFavorited);

@override
String toString() {
  return 'TicketingTicketUiModel(ticketId: $ticketId, gradeName: $gradeName, seatInfo: $seatInfo, price: $price, quantity: $quantity, totalPrice: $totalPrice, originalPrice: $originalPrice, tags: $tags, seller: $seller, description: $description, createdAt: $createdAt, tradeMethodName: $tradeMethodName, hasTicket: $hasTicket, isConsecutive: $isConsecutive, ticketCountInfo: $ticketCountInfo, transactionFeatures: $transactionFeatures, listingImageUrl: $listingImageUrl, isFavorited: $isFavorited)';
}


}

/// @nodoc
abstract mixin class $TicketingTicketUiModelCopyWith<$Res>  {
  factory $TicketingTicketUiModelCopyWith(TicketingTicketUiModel value, $Res Function(TicketingTicketUiModel) _then) = _$TicketingTicketUiModelCopyWithImpl;
@useResult
$Res call({
 int ticketId, String gradeName, String? seatInfo, int price, int quantity, int totalPrice, int originalPrice, List<String> tags, TicketingSellerUiModel seller, String? description, DateTime createdAt, String? tradeMethodName, bool? hasTicket, bool? isConsecutive, String ticketCountInfo, List<String> transactionFeatures, String? listingImageUrl, bool isFavorited
});


$TicketingSellerUiModelCopyWith<$Res> get seller;

}
/// @nodoc
class _$TicketingTicketUiModelCopyWithImpl<$Res>
    implements $TicketingTicketUiModelCopyWith<$Res> {
  _$TicketingTicketUiModelCopyWithImpl(this._self, this._then);

  final TicketingTicketUiModel _self;
  final $Res Function(TicketingTicketUiModel) _then;

/// Create a copy of TicketingTicketUiModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? ticketId = null,Object? gradeName = null,Object? seatInfo = freezed,Object? price = null,Object? quantity = null,Object? totalPrice = null,Object? originalPrice = null,Object? tags = null,Object? seller = null,Object? description = freezed,Object? createdAt = null,Object? tradeMethodName = freezed,Object? hasTicket = freezed,Object? isConsecutive = freezed,Object? ticketCountInfo = null,Object? transactionFeatures = null,Object? listingImageUrl = freezed,Object? isFavorited = null,}) {
  return _then(_self.copyWith(
ticketId: null == ticketId ? _self.ticketId : ticketId // ignore: cast_nullable_to_non_nullable
as int,gradeName: null == gradeName ? _self.gradeName : gradeName // ignore: cast_nullable_to_non_nullable
as String,seatInfo: freezed == seatInfo ? _self.seatInfo : seatInfo // ignore: cast_nullable_to_non_nullable
as String?,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,totalPrice: null == totalPrice ? _self.totalPrice : totalPrice // ignore: cast_nullable_to_non_nullable
as int,originalPrice: null == originalPrice ? _self.originalPrice : originalPrice // ignore: cast_nullable_to_non_nullable
as int,tags: null == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,seller: null == seller ? _self.seller : seller // ignore: cast_nullable_to_non_nullable
as TicketingSellerUiModel,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,tradeMethodName: freezed == tradeMethodName ? _self.tradeMethodName : tradeMethodName // ignore: cast_nullable_to_non_nullable
as String?,hasTicket: freezed == hasTicket ? _self.hasTicket : hasTicket // ignore: cast_nullable_to_non_nullable
as bool?,isConsecutive: freezed == isConsecutive ? _self.isConsecutive : isConsecutive // ignore: cast_nullable_to_non_nullable
as bool?,ticketCountInfo: null == ticketCountInfo ? _self.ticketCountInfo : ticketCountInfo // ignore: cast_nullable_to_non_nullable
as String,transactionFeatures: null == transactionFeatures ? _self.transactionFeatures : transactionFeatures // ignore: cast_nullable_to_non_nullable
as List<String>,listingImageUrl: freezed == listingImageUrl ? _self.listingImageUrl : listingImageUrl // ignore: cast_nullable_to_non_nullable
as String?,isFavorited: null == isFavorited ? _self.isFavorited : isFavorited // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of TicketingTicketUiModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TicketingSellerUiModelCopyWith<$Res> get seller {
  
  return $TicketingSellerUiModelCopyWith<$Res>(_self.seller, (value) {
    return _then(_self.copyWith(seller: value));
  });
}
}


/// Adds pattern-matching-related methods to [TicketingTicketUiModel].
extension TicketingTicketUiModelPatterns on TicketingTicketUiModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TicketingTicketUiModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TicketingTicketUiModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TicketingTicketUiModel value)  $default,){
final _that = this;
switch (_that) {
case _TicketingTicketUiModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TicketingTicketUiModel value)?  $default,){
final _that = this;
switch (_that) {
case _TicketingTicketUiModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int ticketId,  String gradeName,  String? seatInfo,  int price,  int quantity,  int totalPrice,  int originalPrice,  List<String> tags,  TicketingSellerUiModel seller,  String? description,  DateTime createdAt,  String? tradeMethodName,  bool? hasTicket,  bool? isConsecutive,  String ticketCountInfo,  List<String> transactionFeatures,  String? listingImageUrl,  bool isFavorited)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TicketingTicketUiModel() when $default != null:
return $default(_that.ticketId,_that.gradeName,_that.seatInfo,_that.price,_that.quantity,_that.totalPrice,_that.originalPrice,_that.tags,_that.seller,_that.description,_that.createdAt,_that.tradeMethodName,_that.hasTicket,_that.isConsecutive,_that.ticketCountInfo,_that.transactionFeatures,_that.listingImageUrl,_that.isFavorited);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int ticketId,  String gradeName,  String? seatInfo,  int price,  int quantity,  int totalPrice,  int originalPrice,  List<String> tags,  TicketingSellerUiModel seller,  String? description,  DateTime createdAt,  String? tradeMethodName,  bool? hasTicket,  bool? isConsecutive,  String ticketCountInfo,  List<String> transactionFeatures,  String? listingImageUrl,  bool isFavorited)  $default,) {final _that = this;
switch (_that) {
case _TicketingTicketUiModel():
return $default(_that.ticketId,_that.gradeName,_that.seatInfo,_that.price,_that.quantity,_that.totalPrice,_that.originalPrice,_that.tags,_that.seller,_that.description,_that.createdAt,_that.tradeMethodName,_that.hasTicket,_that.isConsecutive,_that.ticketCountInfo,_that.transactionFeatures,_that.listingImageUrl,_that.isFavorited);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int ticketId,  String gradeName,  String? seatInfo,  int price,  int quantity,  int totalPrice,  int originalPrice,  List<String> tags,  TicketingSellerUiModel seller,  String? description,  DateTime createdAt,  String? tradeMethodName,  bool? hasTicket,  bool? isConsecutive,  String ticketCountInfo,  List<String> transactionFeatures,  String? listingImageUrl,  bool isFavorited)?  $default,) {final _that = this;
switch (_that) {
case _TicketingTicketUiModel() when $default != null:
return $default(_that.ticketId,_that.gradeName,_that.seatInfo,_that.price,_that.quantity,_that.totalPrice,_that.originalPrice,_that.tags,_that.seller,_that.description,_that.createdAt,_that.tradeMethodName,_that.hasTicket,_that.isConsecutive,_that.ticketCountInfo,_that.transactionFeatures,_that.listingImageUrl,_that.isFavorited);case _:
  return null;

}
}

}

/// @nodoc


class _TicketingTicketUiModel implements TicketingTicketUiModel {
  const _TicketingTicketUiModel({required this.ticketId, required this.gradeName, required this.seatInfo, required this.price, required this.quantity, required this.totalPrice, required this.originalPrice, required final  List<String> tags, required this.seller, required this.description, required this.createdAt, this.tradeMethodName, this.hasTicket, this.isConsecutive, this.ticketCountInfo = '1인 1매', final  List<String> transactionFeatures = const [], this.listingImageUrl, this.isFavorited = false}): _tags = tags,_transactionFeatures = transactionFeatures;
  

@override final  int ticketId;
@override final  String gradeName;
// seatGradeName
@override final  String? seatInfo;
// area + row 조합
@override final  int price;
@override final  int quantity;
@override final  int totalPrice;
@override final  int originalPrice;
 final  List<String> _tags;
@override List<String> get tags {
  if (_tags is EqualUnmodifiableListView) return _tags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tags);
}

// features의 name들
@override final  TicketingSellerUiModel seller;
@override final  String? description;
@override final  DateTime createdAt;
@override final  String? tradeMethodName;
@override final  bool? hasTicket;
@override final  bool? isConsecutive;
@override@JsonKey() final  String ticketCountInfo;
 final  List<String> _transactionFeatures;
@override@JsonKey() List<String> get transactionFeatures {
  if (_transactionFeatures is EqualUnmodifiableListView) return _transactionFeatures;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_transactionFeatures);
}

@override final  String? listingImageUrl;
@override@JsonKey() final  bool isFavorited;

/// Create a copy of TicketingTicketUiModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TicketingTicketUiModelCopyWith<_TicketingTicketUiModel> get copyWith => __$TicketingTicketUiModelCopyWithImpl<_TicketingTicketUiModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TicketingTicketUiModel&&(identical(other.ticketId, ticketId) || other.ticketId == ticketId)&&(identical(other.gradeName, gradeName) || other.gradeName == gradeName)&&(identical(other.seatInfo, seatInfo) || other.seatInfo == seatInfo)&&(identical(other.price, price) || other.price == price)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.totalPrice, totalPrice) || other.totalPrice == totalPrice)&&(identical(other.originalPrice, originalPrice) || other.originalPrice == originalPrice)&&const DeepCollectionEquality().equals(other._tags, _tags)&&(identical(other.seller, seller) || other.seller == seller)&&(identical(other.description, description) || other.description == description)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.tradeMethodName, tradeMethodName) || other.tradeMethodName == tradeMethodName)&&(identical(other.hasTicket, hasTicket) || other.hasTicket == hasTicket)&&(identical(other.isConsecutive, isConsecutive) || other.isConsecutive == isConsecutive)&&(identical(other.ticketCountInfo, ticketCountInfo) || other.ticketCountInfo == ticketCountInfo)&&const DeepCollectionEquality().equals(other._transactionFeatures, _transactionFeatures)&&(identical(other.listingImageUrl, listingImageUrl) || other.listingImageUrl == listingImageUrl)&&(identical(other.isFavorited, isFavorited) || other.isFavorited == isFavorited));
}


@override
int get hashCode => Object.hash(runtimeType,ticketId,gradeName,seatInfo,price,quantity,totalPrice,originalPrice,const DeepCollectionEquality().hash(_tags),seller,description,createdAt,tradeMethodName,hasTicket,isConsecutive,ticketCountInfo,const DeepCollectionEquality().hash(_transactionFeatures),listingImageUrl,isFavorited);

@override
String toString() {
  return 'TicketingTicketUiModel(ticketId: $ticketId, gradeName: $gradeName, seatInfo: $seatInfo, price: $price, quantity: $quantity, totalPrice: $totalPrice, originalPrice: $originalPrice, tags: $tags, seller: $seller, description: $description, createdAt: $createdAt, tradeMethodName: $tradeMethodName, hasTicket: $hasTicket, isConsecutive: $isConsecutive, ticketCountInfo: $ticketCountInfo, transactionFeatures: $transactionFeatures, listingImageUrl: $listingImageUrl, isFavorited: $isFavorited)';
}


}

/// @nodoc
abstract mixin class _$TicketingTicketUiModelCopyWith<$Res> implements $TicketingTicketUiModelCopyWith<$Res> {
  factory _$TicketingTicketUiModelCopyWith(_TicketingTicketUiModel value, $Res Function(_TicketingTicketUiModel) _then) = __$TicketingTicketUiModelCopyWithImpl;
@override @useResult
$Res call({
 int ticketId, String gradeName, String? seatInfo, int price, int quantity, int totalPrice, int originalPrice, List<String> tags, TicketingSellerUiModel seller, String? description, DateTime createdAt, String? tradeMethodName, bool? hasTicket, bool? isConsecutive, String ticketCountInfo, List<String> transactionFeatures, String? listingImageUrl, bool isFavorited
});


@override $TicketingSellerUiModelCopyWith<$Res> get seller;

}
/// @nodoc
class __$TicketingTicketUiModelCopyWithImpl<$Res>
    implements _$TicketingTicketUiModelCopyWith<$Res> {
  __$TicketingTicketUiModelCopyWithImpl(this._self, this._then);

  final _TicketingTicketUiModel _self;
  final $Res Function(_TicketingTicketUiModel) _then;

/// Create a copy of TicketingTicketUiModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? ticketId = null,Object? gradeName = null,Object? seatInfo = freezed,Object? price = null,Object? quantity = null,Object? totalPrice = null,Object? originalPrice = null,Object? tags = null,Object? seller = null,Object? description = freezed,Object? createdAt = null,Object? tradeMethodName = freezed,Object? hasTicket = freezed,Object? isConsecutive = freezed,Object? ticketCountInfo = null,Object? transactionFeatures = null,Object? listingImageUrl = freezed,Object? isFavorited = null,}) {
  return _then(_TicketingTicketUiModel(
ticketId: null == ticketId ? _self.ticketId : ticketId // ignore: cast_nullable_to_non_nullable
as int,gradeName: null == gradeName ? _self.gradeName : gradeName // ignore: cast_nullable_to_non_nullable
as String,seatInfo: freezed == seatInfo ? _self.seatInfo : seatInfo // ignore: cast_nullable_to_non_nullable
as String?,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,totalPrice: null == totalPrice ? _self.totalPrice : totalPrice // ignore: cast_nullable_to_non_nullable
as int,originalPrice: null == originalPrice ? _self.originalPrice : originalPrice // ignore: cast_nullable_to_non_nullable
as int,tags: null == tags ? _self._tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,seller: null == seller ? _self.seller : seller // ignore: cast_nullable_to_non_nullable
as TicketingSellerUiModel,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,tradeMethodName: freezed == tradeMethodName ? _self.tradeMethodName : tradeMethodName // ignore: cast_nullable_to_non_nullable
as String?,hasTicket: freezed == hasTicket ? _self.hasTicket : hasTicket // ignore: cast_nullable_to_non_nullable
as bool?,isConsecutive: freezed == isConsecutive ? _self.isConsecutive : isConsecutive // ignore: cast_nullable_to_non_nullable
as bool?,ticketCountInfo: null == ticketCountInfo ? _self.ticketCountInfo : ticketCountInfo // ignore: cast_nullable_to_non_nullable
as String,transactionFeatures: null == transactionFeatures ? _self._transactionFeatures : transactionFeatures // ignore: cast_nullable_to_non_nullable
as List<String>,listingImageUrl: freezed == listingImageUrl ? _self.listingImageUrl : listingImageUrl // ignore: cast_nullable_to_non_nullable
as String?,isFavorited: null == isFavorited ? _self.isFavorited : isFavorited // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of TicketingTicketUiModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TicketingSellerUiModelCopyWith<$Res> get seller {
  
  return $TicketingSellerUiModelCopyWith<$Res>(_self.seller, (value) {
    return _then(_self.copyWith(seller: value));
  });
}
}

/// @nodoc
mixin _$TicketingSellerUiModel {

 int get userId; String? get nickname; String? get profileImageUrl; double? get mannerTemperature; int get totalTradeCount; double? get responseRate; bool get isSecurePayment;
/// Create a copy of TicketingSellerUiModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TicketingSellerUiModelCopyWith<TicketingSellerUiModel> get copyWith => _$TicketingSellerUiModelCopyWithImpl<TicketingSellerUiModel>(this as TicketingSellerUiModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TicketingSellerUiModel&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.nickname, nickname) || other.nickname == nickname)&&(identical(other.profileImageUrl, profileImageUrl) || other.profileImageUrl == profileImageUrl)&&(identical(other.mannerTemperature, mannerTemperature) || other.mannerTemperature == mannerTemperature)&&(identical(other.totalTradeCount, totalTradeCount) || other.totalTradeCount == totalTradeCount)&&(identical(other.responseRate, responseRate) || other.responseRate == responseRate)&&(identical(other.isSecurePayment, isSecurePayment) || other.isSecurePayment == isSecurePayment));
}


@override
int get hashCode => Object.hash(runtimeType,userId,nickname,profileImageUrl,mannerTemperature,totalTradeCount,responseRate,isSecurePayment);

@override
String toString() {
  return 'TicketingSellerUiModel(userId: $userId, nickname: $nickname, profileImageUrl: $profileImageUrl, mannerTemperature: $mannerTemperature, totalTradeCount: $totalTradeCount, responseRate: $responseRate, isSecurePayment: $isSecurePayment)';
}


}

/// @nodoc
abstract mixin class $TicketingSellerUiModelCopyWith<$Res>  {
  factory $TicketingSellerUiModelCopyWith(TicketingSellerUiModel value, $Res Function(TicketingSellerUiModel) _then) = _$TicketingSellerUiModelCopyWithImpl;
@useResult
$Res call({
 int userId, String? nickname, String? profileImageUrl, double? mannerTemperature, int totalTradeCount, double? responseRate, bool isSecurePayment
});




}
/// @nodoc
class _$TicketingSellerUiModelCopyWithImpl<$Res>
    implements $TicketingSellerUiModelCopyWith<$Res> {
  _$TicketingSellerUiModelCopyWithImpl(this._self, this._then);

  final TicketingSellerUiModel _self;
  final $Res Function(TicketingSellerUiModel) _then;

/// Create a copy of TicketingSellerUiModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = null,Object? nickname = freezed,Object? profileImageUrl = freezed,Object? mannerTemperature = freezed,Object? totalTradeCount = null,Object? responseRate = freezed,Object? isSecurePayment = null,}) {
  return _then(_self.copyWith(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,nickname: freezed == nickname ? _self.nickname : nickname // ignore: cast_nullable_to_non_nullable
as String?,profileImageUrl: freezed == profileImageUrl ? _self.profileImageUrl : profileImageUrl // ignore: cast_nullable_to_non_nullable
as String?,mannerTemperature: freezed == mannerTemperature ? _self.mannerTemperature : mannerTemperature // ignore: cast_nullable_to_non_nullable
as double?,totalTradeCount: null == totalTradeCount ? _self.totalTradeCount : totalTradeCount // ignore: cast_nullable_to_non_nullable
as int,responseRate: freezed == responseRate ? _self.responseRate : responseRate // ignore: cast_nullable_to_non_nullable
as double?,isSecurePayment: null == isSecurePayment ? _self.isSecurePayment : isSecurePayment // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [TicketingSellerUiModel].
extension TicketingSellerUiModelPatterns on TicketingSellerUiModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TicketingSellerUiModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TicketingSellerUiModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TicketingSellerUiModel value)  $default,){
final _that = this;
switch (_that) {
case _TicketingSellerUiModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TicketingSellerUiModel value)?  $default,){
final _that = this;
switch (_that) {
case _TicketingSellerUiModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int userId,  String? nickname,  String? profileImageUrl,  double? mannerTemperature,  int totalTradeCount,  double? responseRate,  bool isSecurePayment)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TicketingSellerUiModel() when $default != null:
return $default(_that.userId,_that.nickname,_that.profileImageUrl,_that.mannerTemperature,_that.totalTradeCount,_that.responseRate,_that.isSecurePayment);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int userId,  String? nickname,  String? profileImageUrl,  double? mannerTemperature,  int totalTradeCount,  double? responseRate,  bool isSecurePayment)  $default,) {final _that = this;
switch (_that) {
case _TicketingSellerUiModel():
return $default(_that.userId,_that.nickname,_that.profileImageUrl,_that.mannerTemperature,_that.totalTradeCount,_that.responseRate,_that.isSecurePayment);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int userId,  String? nickname,  String? profileImageUrl,  double? mannerTemperature,  int totalTradeCount,  double? responseRate,  bool isSecurePayment)?  $default,) {final _that = this;
switch (_that) {
case _TicketingSellerUiModel() when $default != null:
return $default(_that.userId,_that.nickname,_that.profileImageUrl,_that.mannerTemperature,_that.totalTradeCount,_that.responseRate,_that.isSecurePayment);case _:
  return null;

}
}

}

/// @nodoc


class _TicketingSellerUiModel implements TicketingSellerUiModel {
  const _TicketingSellerUiModel({required this.userId, this.nickname, this.profileImageUrl, this.mannerTemperature, required this.totalTradeCount, this.responseRate, this.isSecurePayment = false});
  

@override final  int userId;
@override final  String? nickname;
@override final  String? profileImageUrl;
@override final  double? mannerTemperature;
@override final  int totalTradeCount;
@override final  double? responseRate;
@override@JsonKey() final  bool isSecurePayment;

/// Create a copy of TicketingSellerUiModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TicketingSellerUiModelCopyWith<_TicketingSellerUiModel> get copyWith => __$TicketingSellerUiModelCopyWithImpl<_TicketingSellerUiModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TicketingSellerUiModel&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.nickname, nickname) || other.nickname == nickname)&&(identical(other.profileImageUrl, profileImageUrl) || other.profileImageUrl == profileImageUrl)&&(identical(other.mannerTemperature, mannerTemperature) || other.mannerTemperature == mannerTemperature)&&(identical(other.totalTradeCount, totalTradeCount) || other.totalTradeCount == totalTradeCount)&&(identical(other.responseRate, responseRate) || other.responseRate == responseRate)&&(identical(other.isSecurePayment, isSecurePayment) || other.isSecurePayment == isSecurePayment));
}


@override
int get hashCode => Object.hash(runtimeType,userId,nickname,profileImageUrl,mannerTemperature,totalTradeCount,responseRate,isSecurePayment);

@override
String toString() {
  return 'TicketingSellerUiModel(userId: $userId, nickname: $nickname, profileImageUrl: $profileImageUrl, mannerTemperature: $mannerTemperature, totalTradeCount: $totalTradeCount, responseRate: $responseRate, isSecurePayment: $isSecurePayment)';
}


}

/// @nodoc
abstract mixin class _$TicketingSellerUiModelCopyWith<$Res> implements $TicketingSellerUiModelCopyWith<$Res> {
  factory _$TicketingSellerUiModelCopyWith(_TicketingSellerUiModel value, $Res Function(_TicketingSellerUiModel) _then) = __$TicketingSellerUiModelCopyWithImpl;
@override @useResult
$Res call({
 int userId, String? nickname, String? profileImageUrl, double? mannerTemperature, int totalTradeCount, double? responseRate, bool isSecurePayment
});




}
/// @nodoc
class __$TicketingSellerUiModelCopyWithImpl<$Res>
    implements _$TicketingSellerUiModelCopyWith<$Res> {
  __$TicketingSellerUiModelCopyWithImpl(this._self, this._then);

  final _TicketingSellerUiModel _self;
  final $Res Function(_TicketingSellerUiModel) _then;

/// Create a copy of TicketingSellerUiModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = null,Object? nickname = freezed,Object? profileImageUrl = freezed,Object? mannerTemperature = freezed,Object? totalTradeCount = null,Object? responseRate = freezed,Object? isSecurePayment = null,}) {
  return _then(_TicketingSellerUiModel(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,nickname: freezed == nickname ? _self.nickname : nickname // ignore: cast_nullable_to_non_nullable
as String?,profileImageUrl: freezed == profileImageUrl ? _self.profileImageUrl : profileImageUrl // ignore: cast_nullable_to_non_nullable
as String?,mannerTemperature: freezed == mannerTemperature ? _self.mannerTemperature : mannerTemperature // ignore: cast_nullable_to_non_nullable
as double?,totalTradeCount: null == totalTradeCount ? _self.totalTradeCount : totalTradeCount // ignore: cast_nullable_to_non_nullable
as int,responseRate: freezed == responseRate ? _self.responseRate : responseRate // ignore: cast_nullable_to_non_nullable
as double?,isSecurePayment: null == isSecurePayment ? _self.isSecurePayment : isSecurePayment // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
