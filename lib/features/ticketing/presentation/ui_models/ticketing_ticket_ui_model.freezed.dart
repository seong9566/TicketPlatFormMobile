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

 int get ticketId; String get title; String get gradeName;// seatType
 String? get seatInfo; int get price; int get originalPrice; List<String> get tags; TicketingSellerUiModel get seller; String? get description; DateTime get createdAt; String get ticketCountInfo; List<String> get transactionFeatures; String? get listingImageUrl; bool get isFavorited;
/// Create a copy of TicketingTicketUiModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TicketingTicketUiModelCopyWith<TicketingTicketUiModel> get copyWith => _$TicketingTicketUiModelCopyWithImpl<TicketingTicketUiModel>(this as TicketingTicketUiModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TicketingTicketUiModel&&(identical(other.ticketId, ticketId) || other.ticketId == ticketId)&&(identical(other.title, title) || other.title == title)&&(identical(other.gradeName, gradeName) || other.gradeName == gradeName)&&(identical(other.seatInfo, seatInfo) || other.seatInfo == seatInfo)&&(identical(other.price, price) || other.price == price)&&(identical(other.originalPrice, originalPrice) || other.originalPrice == originalPrice)&&const DeepCollectionEquality().equals(other.tags, tags)&&(identical(other.seller, seller) || other.seller == seller)&&(identical(other.description, description) || other.description == description)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.ticketCountInfo, ticketCountInfo) || other.ticketCountInfo == ticketCountInfo)&&const DeepCollectionEquality().equals(other.transactionFeatures, transactionFeatures)&&(identical(other.listingImageUrl, listingImageUrl) || other.listingImageUrl == listingImageUrl)&&(identical(other.isFavorited, isFavorited) || other.isFavorited == isFavorited));
}


@override
int get hashCode => Object.hash(runtimeType,ticketId,title,gradeName,seatInfo,price,originalPrice,const DeepCollectionEquality().hash(tags),seller,description,createdAt,ticketCountInfo,const DeepCollectionEquality().hash(transactionFeatures),listingImageUrl,isFavorited);

@override
String toString() {
  return 'TicketingTicketUiModel(ticketId: $ticketId, title: $title, gradeName: $gradeName, seatInfo: $seatInfo, price: $price, originalPrice: $originalPrice, tags: $tags, seller: $seller, description: $description, createdAt: $createdAt, ticketCountInfo: $ticketCountInfo, transactionFeatures: $transactionFeatures, listingImageUrl: $listingImageUrl, isFavorited: $isFavorited)';
}


}

/// @nodoc
abstract mixin class $TicketingTicketUiModelCopyWith<$Res>  {
  factory $TicketingTicketUiModelCopyWith(TicketingTicketUiModel value, $Res Function(TicketingTicketUiModel) _then) = _$TicketingTicketUiModelCopyWithImpl;
@useResult
$Res call({
 int ticketId, String title, String gradeName, String? seatInfo, int price, int originalPrice, List<String> tags, TicketingSellerUiModel seller, String? description, DateTime createdAt, String ticketCountInfo, List<String> transactionFeatures, String? listingImageUrl, bool isFavorited
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
@pragma('vm:prefer-inline') @override $Res call({Object? ticketId = null,Object? title = null,Object? gradeName = null,Object? seatInfo = freezed,Object? price = null,Object? originalPrice = null,Object? tags = null,Object? seller = null,Object? description = freezed,Object? createdAt = null,Object? ticketCountInfo = null,Object? transactionFeatures = null,Object? listingImageUrl = freezed,Object? isFavorited = null,}) {
  return _then(_self.copyWith(
ticketId: null == ticketId ? _self.ticketId : ticketId // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,gradeName: null == gradeName ? _self.gradeName : gradeName // ignore: cast_nullable_to_non_nullable
as String,seatInfo: freezed == seatInfo ? _self.seatInfo : seatInfo // ignore: cast_nullable_to_non_nullable
as String?,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,originalPrice: null == originalPrice ? _self.originalPrice : originalPrice // ignore: cast_nullable_to_non_nullable
as int,tags: null == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,seller: null == seller ? _self.seller : seller // ignore: cast_nullable_to_non_nullable
as TicketingSellerUiModel,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,ticketCountInfo: null == ticketCountInfo ? _self.ticketCountInfo : ticketCountInfo // ignore: cast_nullable_to_non_nullable
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int ticketId,  String title,  String gradeName,  String? seatInfo,  int price,  int originalPrice,  List<String> tags,  TicketingSellerUiModel seller,  String? description,  DateTime createdAt,  String ticketCountInfo,  List<String> transactionFeatures,  String? listingImageUrl,  bool isFavorited)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TicketingTicketUiModel() when $default != null:
return $default(_that.ticketId,_that.title,_that.gradeName,_that.seatInfo,_that.price,_that.originalPrice,_that.tags,_that.seller,_that.description,_that.createdAt,_that.ticketCountInfo,_that.transactionFeatures,_that.listingImageUrl,_that.isFavorited);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int ticketId,  String title,  String gradeName,  String? seatInfo,  int price,  int originalPrice,  List<String> tags,  TicketingSellerUiModel seller,  String? description,  DateTime createdAt,  String ticketCountInfo,  List<String> transactionFeatures,  String? listingImageUrl,  bool isFavorited)  $default,) {final _that = this;
switch (_that) {
case _TicketingTicketUiModel():
return $default(_that.ticketId,_that.title,_that.gradeName,_that.seatInfo,_that.price,_that.originalPrice,_that.tags,_that.seller,_that.description,_that.createdAt,_that.ticketCountInfo,_that.transactionFeatures,_that.listingImageUrl,_that.isFavorited);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int ticketId,  String title,  String gradeName,  String? seatInfo,  int price,  int originalPrice,  List<String> tags,  TicketingSellerUiModel seller,  String? description,  DateTime createdAt,  String ticketCountInfo,  List<String> transactionFeatures,  String? listingImageUrl,  bool isFavorited)?  $default,) {final _that = this;
switch (_that) {
case _TicketingTicketUiModel() when $default != null:
return $default(_that.ticketId,_that.title,_that.gradeName,_that.seatInfo,_that.price,_that.originalPrice,_that.tags,_that.seller,_that.description,_that.createdAt,_that.ticketCountInfo,_that.transactionFeatures,_that.listingImageUrl,_that.isFavorited);case _:
  return null;

}
}

}

/// @nodoc


class _TicketingTicketUiModel implements TicketingTicketUiModel {
  const _TicketingTicketUiModel({required this.ticketId, required this.title, required this.gradeName, required this.seatInfo, required this.price, required this.originalPrice, required final  List<String> tags, required this.seller, required this.description, required this.createdAt, this.ticketCountInfo = '1인 1매', final  List<String> transactionFeatures = const [], this.listingImageUrl, this.isFavorited = false}): _tags = tags,_transactionFeatures = transactionFeatures;
  

@override final  int ticketId;
@override final  String title;
@override final  String gradeName;
// seatType
@override final  String? seatInfo;
@override final  int price;
@override final  int originalPrice;
 final  List<String> _tags;
@override List<String> get tags {
  if (_tags is EqualUnmodifiableListView) return _tags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tags);
}

@override final  TicketingSellerUiModel seller;
@override final  String? description;
@override final  DateTime createdAt;
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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TicketingTicketUiModel&&(identical(other.ticketId, ticketId) || other.ticketId == ticketId)&&(identical(other.title, title) || other.title == title)&&(identical(other.gradeName, gradeName) || other.gradeName == gradeName)&&(identical(other.seatInfo, seatInfo) || other.seatInfo == seatInfo)&&(identical(other.price, price) || other.price == price)&&(identical(other.originalPrice, originalPrice) || other.originalPrice == originalPrice)&&const DeepCollectionEquality().equals(other._tags, _tags)&&(identical(other.seller, seller) || other.seller == seller)&&(identical(other.description, description) || other.description == description)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.ticketCountInfo, ticketCountInfo) || other.ticketCountInfo == ticketCountInfo)&&const DeepCollectionEquality().equals(other._transactionFeatures, _transactionFeatures)&&(identical(other.listingImageUrl, listingImageUrl) || other.listingImageUrl == listingImageUrl)&&(identical(other.isFavorited, isFavorited) || other.isFavorited == isFavorited));
}


@override
int get hashCode => Object.hash(runtimeType,ticketId,title,gradeName,seatInfo,price,originalPrice,const DeepCollectionEquality().hash(_tags),seller,description,createdAt,ticketCountInfo,const DeepCollectionEquality().hash(_transactionFeatures),listingImageUrl,isFavorited);

@override
String toString() {
  return 'TicketingTicketUiModel(ticketId: $ticketId, title: $title, gradeName: $gradeName, seatInfo: $seatInfo, price: $price, originalPrice: $originalPrice, tags: $tags, seller: $seller, description: $description, createdAt: $createdAt, ticketCountInfo: $ticketCountInfo, transactionFeatures: $transactionFeatures, listingImageUrl: $listingImageUrl, isFavorited: $isFavorited)';
}


}

/// @nodoc
abstract mixin class _$TicketingTicketUiModelCopyWith<$Res> implements $TicketingTicketUiModelCopyWith<$Res> {
  factory _$TicketingTicketUiModelCopyWith(_TicketingTicketUiModel value, $Res Function(_TicketingTicketUiModel) _then) = __$TicketingTicketUiModelCopyWithImpl;
@override @useResult
$Res call({
 int ticketId, String title, String gradeName, String? seatInfo, int price, int originalPrice, List<String> tags, TicketingSellerUiModel seller, String? description, DateTime createdAt, String ticketCountInfo, List<String> transactionFeatures, String? listingImageUrl, bool isFavorited
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
@override @pragma('vm:prefer-inline') $Res call({Object? ticketId = null,Object? title = null,Object? gradeName = null,Object? seatInfo = freezed,Object? price = null,Object? originalPrice = null,Object? tags = null,Object? seller = null,Object? description = freezed,Object? createdAt = null,Object? ticketCountInfo = null,Object? transactionFeatures = null,Object? listingImageUrl = freezed,Object? isFavorited = null,}) {
  return _then(_TicketingTicketUiModel(
ticketId: null == ticketId ? _self.ticketId : ticketId // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,gradeName: null == gradeName ? _self.gradeName : gradeName // ignore: cast_nullable_to_non_nullable
as String,seatInfo: freezed == seatInfo ? _self.seatInfo : seatInfo // ignore: cast_nullable_to_non_nullable
as String?,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,originalPrice: null == originalPrice ? _self.originalPrice : originalPrice // ignore: cast_nullable_to_non_nullable
as int,tags: null == tags ? _self._tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,seller: null == seller ? _self.seller : seller // ignore: cast_nullable_to_non_nullable
as TicketingSellerUiModel,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,ticketCountInfo: null == ticketCountInfo ? _self.ticketCountInfo : ticketCountInfo // ignore: cast_nullable_to_non_nullable
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

 int get userId; String get nickname; String get profileImageUrl; double get mannerTemperature; int get totalTradeCount; int? get responseRate; bool get isSecurePayment; int get responseRateManual; int get transactionCountManual;
/// Create a copy of TicketingSellerUiModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TicketingSellerUiModelCopyWith<TicketingSellerUiModel> get copyWith => _$TicketingSellerUiModelCopyWithImpl<TicketingSellerUiModel>(this as TicketingSellerUiModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TicketingSellerUiModel&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.nickname, nickname) || other.nickname == nickname)&&(identical(other.profileImageUrl, profileImageUrl) || other.profileImageUrl == profileImageUrl)&&(identical(other.mannerTemperature, mannerTemperature) || other.mannerTemperature == mannerTemperature)&&(identical(other.totalTradeCount, totalTradeCount) || other.totalTradeCount == totalTradeCount)&&(identical(other.responseRate, responseRate) || other.responseRate == responseRate)&&(identical(other.isSecurePayment, isSecurePayment) || other.isSecurePayment == isSecurePayment)&&(identical(other.responseRateManual, responseRateManual) || other.responseRateManual == responseRateManual)&&(identical(other.transactionCountManual, transactionCountManual) || other.transactionCountManual == transactionCountManual));
}


@override
int get hashCode => Object.hash(runtimeType,userId,nickname,profileImageUrl,mannerTemperature,totalTradeCount,responseRate,isSecurePayment,responseRateManual,transactionCountManual);

@override
String toString() {
  return 'TicketingSellerUiModel(userId: $userId, nickname: $nickname, profileImageUrl: $profileImageUrl, mannerTemperature: $mannerTemperature, totalTradeCount: $totalTradeCount, responseRate: $responseRate, isSecurePayment: $isSecurePayment, responseRateManual: $responseRateManual, transactionCountManual: $transactionCountManual)';
}


}

/// @nodoc
abstract mixin class $TicketingSellerUiModelCopyWith<$Res>  {
  factory $TicketingSellerUiModelCopyWith(TicketingSellerUiModel value, $Res Function(TicketingSellerUiModel) _then) = _$TicketingSellerUiModelCopyWithImpl;
@useResult
$Res call({
 int userId, String nickname, String profileImageUrl, double mannerTemperature, int totalTradeCount, int? responseRate, bool isSecurePayment, int responseRateManual, int transactionCountManual
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
@pragma('vm:prefer-inline') @override $Res call({Object? userId = null,Object? nickname = null,Object? profileImageUrl = null,Object? mannerTemperature = null,Object? totalTradeCount = null,Object? responseRate = freezed,Object? isSecurePayment = null,Object? responseRateManual = null,Object? transactionCountManual = null,}) {
  return _then(_self.copyWith(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,nickname: null == nickname ? _self.nickname : nickname // ignore: cast_nullable_to_non_nullable
as String,profileImageUrl: null == profileImageUrl ? _self.profileImageUrl : profileImageUrl // ignore: cast_nullable_to_non_nullable
as String,mannerTemperature: null == mannerTemperature ? _self.mannerTemperature : mannerTemperature // ignore: cast_nullable_to_non_nullable
as double,totalTradeCount: null == totalTradeCount ? _self.totalTradeCount : totalTradeCount // ignore: cast_nullable_to_non_nullable
as int,responseRate: freezed == responseRate ? _self.responseRate : responseRate // ignore: cast_nullable_to_non_nullable
as int?,isSecurePayment: null == isSecurePayment ? _self.isSecurePayment : isSecurePayment // ignore: cast_nullable_to_non_nullable
as bool,responseRateManual: null == responseRateManual ? _self.responseRateManual : responseRateManual // ignore: cast_nullable_to_non_nullable
as int,transactionCountManual: null == transactionCountManual ? _self.transactionCountManual : transactionCountManual // ignore: cast_nullable_to_non_nullable
as int,
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int userId,  String nickname,  String profileImageUrl,  double mannerTemperature,  int totalTradeCount,  int? responseRate,  bool isSecurePayment,  int responseRateManual,  int transactionCountManual)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TicketingSellerUiModel() when $default != null:
return $default(_that.userId,_that.nickname,_that.profileImageUrl,_that.mannerTemperature,_that.totalTradeCount,_that.responseRate,_that.isSecurePayment,_that.responseRateManual,_that.transactionCountManual);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int userId,  String nickname,  String profileImageUrl,  double mannerTemperature,  int totalTradeCount,  int? responseRate,  bool isSecurePayment,  int responseRateManual,  int transactionCountManual)  $default,) {final _that = this;
switch (_that) {
case _TicketingSellerUiModel():
return $default(_that.userId,_that.nickname,_that.profileImageUrl,_that.mannerTemperature,_that.totalTradeCount,_that.responseRate,_that.isSecurePayment,_that.responseRateManual,_that.transactionCountManual);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int userId,  String nickname,  String profileImageUrl,  double mannerTemperature,  int totalTradeCount,  int? responseRate,  bool isSecurePayment,  int responseRateManual,  int transactionCountManual)?  $default,) {final _that = this;
switch (_that) {
case _TicketingSellerUiModel() when $default != null:
return $default(_that.userId,_that.nickname,_that.profileImageUrl,_that.mannerTemperature,_that.totalTradeCount,_that.responseRate,_that.isSecurePayment,_that.responseRateManual,_that.transactionCountManual);case _:
  return null;

}
}

}

/// @nodoc


class _TicketingSellerUiModel implements TicketingSellerUiModel {
  const _TicketingSellerUiModel({required this.userId, required this.nickname, required this.profileImageUrl, required this.mannerTemperature, required this.totalTradeCount, required this.responseRate, this.isSecurePayment = false, this.responseRateManual = 98, this.transactionCountManual = 15});
  

@override final  int userId;
@override final  String nickname;
@override final  String profileImageUrl;
@override final  double mannerTemperature;
@override final  int totalTradeCount;
@override final  int? responseRate;
@override@JsonKey() final  bool isSecurePayment;
@override@JsonKey() final  int responseRateManual;
@override@JsonKey() final  int transactionCountManual;

/// Create a copy of TicketingSellerUiModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TicketingSellerUiModelCopyWith<_TicketingSellerUiModel> get copyWith => __$TicketingSellerUiModelCopyWithImpl<_TicketingSellerUiModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TicketingSellerUiModel&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.nickname, nickname) || other.nickname == nickname)&&(identical(other.profileImageUrl, profileImageUrl) || other.profileImageUrl == profileImageUrl)&&(identical(other.mannerTemperature, mannerTemperature) || other.mannerTemperature == mannerTemperature)&&(identical(other.totalTradeCount, totalTradeCount) || other.totalTradeCount == totalTradeCount)&&(identical(other.responseRate, responseRate) || other.responseRate == responseRate)&&(identical(other.isSecurePayment, isSecurePayment) || other.isSecurePayment == isSecurePayment)&&(identical(other.responseRateManual, responseRateManual) || other.responseRateManual == responseRateManual)&&(identical(other.transactionCountManual, transactionCountManual) || other.transactionCountManual == transactionCountManual));
}


@override
int get hashCode => Object.hash(runtimeType,userId,nickname,profileImageUrl,mannerTemperature,totalTradeCount,responseRate,isSecurePayment,responseRateManual,transactionCountManual);

@override
String toString() {
  return 'TicketingSellerUiModel(userId: $userId, nickname: $nickname, profileImageUrl: $profileImageUrl, mannerTemperature: $mannerTemperature, totalTradeCount: $totalTradeCount, responseRate: $responseRate, isSecurePayment: $isSecurePayment, responseRateManual: $responseRateManual, transactionCountManual: $transactionCountManual)';
}


}

/// @nodoc
abstract mixin class _$TicketingSellerUiModelCopyWith<$Res> implements $TicketingSellerUiModelCopyWith<$Res> {
  factory _$TicketingSellerUiModelCopyWith(_TicketingSellerUiModel value, $Res Function(_TicketingSellerUiModel) _then) = __$TicketingSellerUiModelCopyWithImpl;
@override @useResult
$Res call({
 int userId, String nickname, String profileImageUrl, double mannerTemperature, int totalTradeCount, int? responseRate, bool isSecurePayment, int responseRateManual, int transactionCountManual
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
@override @pragma('vm:prefer-inline') $Res call({Object? userId = null,Object? nickname = null,Object? profileImageUrl = null,Object? mannerTemperature = null,Object? totalTradeCount = null,Object? responseRate = freezed,Object? isSecurePayment = null,Object? responseRateManual = null,Object? transactionCountManual = null,}) {
  return _then(_TicketingSellerUiModel(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,nickname: null == nickname ? _self.nickname : nickname // ignore: cast_nullable_to_non_nullable
as String,profileImageUrl: null == profileImageUrl ? _self.profileImageUrl : profileImageUrl // ignore: cast_nullable_to_non_nullable
as String,mannerTemperature: null == mannerTemperature ? _self.mannerTemperature : mannerTemperature // ignore: cast_nullable_to_non_nullable
as double,totalTradeCount: null == totalTradeCount ? _self.totalTradeCount : totalTradeCount // ignore: cast_nullable_to_non_nullable
as int,responseRate: freezed == responseRate ? _self.responseRate : responseRate // ignore: cast_nullable_to_non_nullable
as int?,isSecurePayment: null == isSecurePayment ? _self.isSecurePayment : isSecurePayment // ignore: cast_nullable_to_non_nullable
as bool,responseRateManual: null == responseRateManual ? _self.responseRateManual : responseRateManual // ignore: cast_nullable_to_non_nullable
as int,transactionCountManual: null == transactionCountManual ? _self.transactionCountManual : transactionCountManual // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
