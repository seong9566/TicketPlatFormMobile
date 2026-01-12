// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ticketing_ticket_detail_ui_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TicketingTicketDetailUiModel {

 int get ticketId; String get performanceTitle; String get performanceImageUrl; DateTime get performanceDate; String get location; String get ticketTitle; String get gradeName; String? get seatInfo; int get price; int get originalPrice; List<String> get tags; TicketingSellerUiModel get seller; String? get description; List<String> get images; String get ticketCountInfo; List<String> get transactionFeatures; bool get isFavorited; String? get listingImageUrl;
/// Create a copy of TicketingTicketDetailUiModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TicketingTicketDetailUiModelCopyWith<TicketingTicketDetailUiModel> get copyWith => _$TicketingTicketDetailUiModelCopyWithImpl<TicketingTicketDetailUiModel>(this as TicketingTicketDetailUiModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TicketingTicketDetailUiModel&&(identical(other.ticketId, ticketId) || other.ticketId == ticketId)&&(identical(other.performanceTitle, performanceTitle) || other.performanceTitle == performanceTitle)&&(identical(other.performanceImageUrl, performanceImageUrl) || other.performanceImageUrl == performanceImageUrl)&&(identical(other.performanceDate, performanceDate) || other.performanceDate == performanceDate)&&(identical(other.location, location) || other.location == location)&&(identical(other.ticketTitle, ticketTitle) || other.ticketTitle == ticketTitle)&&(identical(other.gradeName, gradeName) || other.gradeName == gradeName)&&(identical(other.seatInfo, seatInfo) || other.seatInfo == seatInfo)&&(identical(other.price, price) || other.price == price)&&(identical(other.originalPrice, originalPrice) || other.originalPrice == originalPrice)&&const DeepCollectionEquality().equals(other.tags, tags)&&(identical(other.seller, seller) || other.seller == seller)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other.images, images)&&(identical(other.ticketCountInfo, ticketCountInfo) || other.ticketCountInfo == ticketCountInfo)&&const DeepCollectionEquality().equals(other.transactionFeatures, transactionFeatures)&&(identical(other.isFavorited, isFavorited) || other.isFavorited == isFavorited)&&(identical(other.listingImageUrl, listingImageUrl) || other.listingImageUrl == listingImageUrl));
}


@override
int get hashCode => Object.hash(runtimeType,ticketId,performanceTitle,performanceImageUrl,performanceDate,location,ticketTitle,gradeName,seatInfo,price,originalPrice,const DeepCollectionEquality().hash(tags),seller,description,const DeepCollectionEquality().hash(images),ticketCountInfo,const DeepCollectionEquality().hash(transactionFeatures),isFavorited,listingImageUrl);

@override
String toString() {
  return 'TicketingTicketDetailUiModel(ticketId: $ticketId, performanceTitle: $performanceTitle, performanceImageUrl: $performanceImageUrl, performanceDate: $performanceDate, location: $location, ticketTitle: $ticketTitle, gradeName: $gradeName, seatInfo: $seatInfo, price: $price, originalPrice: $originalPrice, tags: $tags, seller: $seller, description: $description, images: $images, ticketCountInfo: $ticketCountInfo, transactionFeatures: $transactionFeatures, isFavorited: $isFavorited, listingImageUrl: $listingImageUrl)';
}


}

/// @nodoc
abstract mixin class $TicketingTicketDetailUiModelCopyWith<$Res>  {
  factory $TicketingTicketDetailUiModelCopyWith(TicketingTicketDetailUiModel value, $Res Function(TicketingTicketDetailUiModel) _then) = _$TicketingTicketDetailUiModelCopyWithImpl;
@useResult
$Res call({
 int ticketId, String performanceTitle, String performanceImageUrl, DateTime performanceDate, String location, String ticketTitle, String gradeName, String? seatInfo, int price, int originalPrice, List<String> tags, TicketingSellerUiModel seller, String? description, List<String> images, String ticketCountInfo, List<String> transactionFeatures, bool isFavorited, String? listingImageUrl
});


$TicketingSellerUiModelCopyWith<$Res> get seller;

}
/// @nodoc
class _$TicketingTicketDetailUiModelCopyWithImpl<$Res>
    implements $TicketingTicketDetailUiModelCopyWith<$Res> {
  _$TicketingTicketDetailUiModelCopyWithImpl(this._self, this._then);

  final TicketingTicketDetailUiModel _self;
  final $Res Function(TicketingTicketDetailUiModel) _then;

/// Create a copy of TicketingTicketDetailUiModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? ticketId = null,Object? performanceTitle = null,Object? performanceImageUrl = null,Object? performanceDate = null,Object? location = null,Object? ticketTitle = null,Object? gradeName = null,Object? seatInfo = freezed,Object? price = null,Object? originalPrice = null,Object? tags = null,Object? seller = null,Object? description = freezed,Object? images = null,Object? ticketCountInfo = null,Object? transactionFeatures = null,Object? isFavorited = null,Object? listingImageUrl = freezed,}) {
  return _then(_self.copyWith(
ticketId: null == ticketId ? _self.ticketId : ticketId // ignore: cast_nullable_to_non_nullable
as int,performanceTitle: null == performanceTitle ? _self.performanceTitle : performanceTitle // ignore: cast_nullable_to_non_nullable
as String,performanceImageUrl: null == performanceImageUrl ? _self.performanceImageUrl : performanceImageUrl // ignore: cast_nullable_to_non_nullable
as String,performanceDate: null == performanceDate ? _self.performanceDate : performanceDate // ignore: cast_nullable_to_non_nullable
as DateTime,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String,ticketTitle: null == ticketTitle ? _self.ticketTitle : ticketTitle // ignore: cast_nullable_to_non_nullable
as String,gradeName: null == gradeName ? _self.gradeName : gradeName // ignore: cast_nullable_to_non_nullable
as String,seatInfo: freezed == seatInfo ? _self.seatInfo : seatInfo // ignore: cast_nullable_to_non_nullable
as String?,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,originalPrice: null == originalPrice ? _self.originalPrice : originalPrice // ignore: cast_nullable_to_non_nullable
as int,tags: null == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,seller: null == seller ? _self.seller : seller // ignore: cast_nullable_to_non_nullable
as TicketingSellerUiModel,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,images: null == images ? _self.images : images // ignore: cast_nullable_to_non_nullable
as List<String>,ticketCountInfo: null == ticketCountInfo ? _self.ticketCountInfo : ticketCountInfo // ignore: cast_nullable_to_non_nullable
as String,transactionFeatures: null == transactionFeatures ? _self.transactionFeatures : transactionFeatures // ignore: cast_nullable_to_non_nullable
as List<String>,isFavorited: null == isFavorited ? _self.isFavorited : isFavorited // ignore: cast_nullable_to_non_nullable
as bool,listingImageUrl: freezed == listingImageUrl ? _self.listingImageUrl : listingImageUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of TicketingTicketDetailUiModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TicketingSellerUiModelCopyWith<$Res> get seller {
  
  return $TicketingSellerUiModelCopyWith<$Res>(_self.seller, (value) {
    return _then(_self.copyWith(seller: value));
  });
}
}


/// Adds pattern-matching-related methods to [TicketingTicketDetailUiModel].
extension TicketingTicketDetailUiModelPatterns on TicketingTicketDetailUiModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TicketingTicketDetailUiModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TicketingTicketDetailUiModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TicketingTicketDetailUiModel value)  $default,){
final _that = this;
switch (_that) {
case _TicketingTicketDetailUiModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TicketingTicketDetailUiModel value)?  $default,){
final _that = this;
switch (_that) {
case _TicketingTicketDetailUiModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int ticketId,  String performanceTitle,  String performanceImageUrl,  DateTime performanceDate,  String location,  String ticketTitle,  String gradeName,  String? seatInfo,  int price,  int originalPrice,  List<String> tags,  TicketingSellerUiModel seller,  String? description,  List<String> images,  String ticketCountInfo,  List<String> transactionFeatures,  bool isFavorited,  String? listingImageUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TicketingTicketDetailUiModel() when $default != null:
return $default(_that.ticketId,_that.performanceTitle,_that.performanceImageUrl,_that.performanceDate,_that.location,_that.ticketTitle,_that.gradeName,_that.seatInfo,_that.price,_that.originalPrice,_that.tags,_that.seller,_that.description,_that.images,_that.ticketCountInfo,_that.transactionFeatures,_that.isFavorited,_that.listingImageUrl);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int ticketId,  String performanceTitle,  String performanceImageUrl,  DateTime performanceDate,  String location,  String ticketTitle,  String gradeName,  String? seatInfo,  int price,  int originalPrice,  List<String> tags,  TicketingSellerUiModel seller,  String? description,  List<String> images,  String ticketCountInfo,  List<String> transactionFeatures,  bool isFavorited,  String? listingImageUrl)  $default,) {final _that = this;
switch (_that) {
case _TicketingTicketDetailUiModel():
return $default(_that.ticketId,_that.performanceTitle,_that.performanceImageUrl,_that.performanceDate,_that.location,_that.ticketTitle,_that.gradeName,_that.seatInfo,_that.price,_that.originalPrice,_that.tags,_that.seller,_that.description,_that.images,_that.ticketCountInfo,_that.transactionFeatures,_that.isFavorited,_that.listingImageUrl);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int ticketId,  String performanceTitle,  String performanceImageUrl,  DateTime performanceDate,  String location,  String ticketTitle,  String gradeName,  String? seatInfo,  int price,  int originalPrice,  List<String> tags,  TicketingSellerUiModel seller,  String? description,  List<String> images,  String ticketCountInfo,  List<String> transactionFeatures,  bool isFavorited,  String? listingImageUrl)?  $default,) {final _that = this;
switch (_that) {
case _TicketingTicketDetailUiModel() when $default != null:
return $default(_that.ticketId,_that.performanceTitle,_that.performanceImageUrl,_that.performanceDate,_that.location,_that.ticketTitle,_that.gradeName,_that.seatInfo,_that.price,_that.originalPrice,_that.tags,_that.seller,_that.description,_that.images,_that.ticketCountInfo,_that.transactionFeatures,_that.isFavorited,_that.listingImageUrl);case _:
  return null;

}
}

}

/// @nodoc


class _TicketingTicketDetailUiModel implements TicketingTicketDetailUiModel {
  const _TicketingTicketDetailUiModel({required this.ticketId, required this.performanceTitle, required this.performanceImageUrl, required this.performanceDate, required this.location, required this.ticketTitle, required this.gradeName, required this.seatInfo, required this.price, required this.originalPrice, required final  List<String> tags, required this.seller, required this.description, required final  List<String> images, required this.ticketCountInfo, required final  List<String> transactionFeatures, required this.isFavorited, this.listingImageUrl}): _tags = tags,_images = images,_transactionFeatures = transactionFeatures;
  

@override final  int ticketId;
@override final  String performanceTitle;
@override final  String performanceImageUrl;
@override final  DateTime performanceDate;
@override final  String location;
@override final  String ticketTitle;
@override final  String gradeName;
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
 final  List<String> _images;
@override List<String> get images {
  if (_images is EqualUnmodifiableListView) return _images;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_images);
}

@override final  String ticketCountInfo;
 final  List<String> _transactionFeatures;
@override List<String> get transactionFeatures {
  if (_transactionFeatures is EqualUnmodifiableListView) return _transactionFeatures;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_transactionFeatures);
}

@override final  bool isFavorited;
@override final  String? listingImageUrl;

/// Create a copy of TicketingTicketDetailUiModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TicketingTicketDetailUiModelCopyWith<_TicketingTicketDetailUiModel> get copyWith => __$TicketingTicketDetailUiModelCopyWithImpl<_TicketingTicketDetailUiModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TicketingTicketDetailUiModel&&(identical(other.ticketId, ticketId) || other.ticketId == ticketId)&&(identical(other.performanceTitle, performanceTitle) || other.performanceTitle == performanceTitle)&&(identical(other.performanceImageUrl, performanceImageUrl) || other.performanceImageUrl == performanceImageUrl)&&(identical(other.performanceDate, performanceDate) || other.performanceDate == performanceDate)&&(identical(other.location, location) || other.location == location)&&(identical(other.ticketTitle, ticketTitle) || other.ticketTitle == ticketTitle)&&(identical(other.gradeName, gradeName) || other.gradeName == gradeName)&&(identical(other.seatInfo, seatInfo) || other.seatInfo == seatInfo)&&(identical(other.price, price) || other.price == price)&&(identical(other.originalPrice, originalPrice) || other.originalPrice == originalPrice)&&const DeepCollectionEquality().equals(other._tags, _tags)&&(identical(other.seller, seller) || other.seller == seller)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other._images, _images)&&(identical(other.ticketCountInfo, ticketCountInfo) || other.ticketCountInfo == ticketCountInfo)&&const DeepCollectionEquality().equals(other._transactionFeatures, _transactionFeatures)&&(identical(other.isFavorited, isFavorited) || other.isFavorited == isFavorited)&&(identical(other.listingImageUrl, listingImageUrl) || other.listingImageUrl == listingImageUrl));
}


@override
int get hashCode => Object.hash(runtimeType,ticketId,performanceTitle,performanceImageUrl,performanceDate,location,ticketTitle,gradeName,seatInfo,price,originalPrice,const DeepCollectionEquality().hash(_tags),seller,description,const DeepCollectionEquality().hash(_images),ticketCountInfo,const DeepCollectionEquality().hash(_transactionFeatures),isFavorited,listingImageUrl);

@override
String toString() {
  return 'TicketingTicketDetailUiModel(ticketId: $ticketId, performanceTitle: $performanceTitle, performanceImageUrl: $performanceImageUrl, performanceDate: $performanceDate, location: $location, ticketTitle: $ticketTitle, gradeName: $gradeName, seatInfo: $seatInfo, price: $price, originalPrice: $originalPrice, tags: $tags, seller: $seller, description: $description, images: $images, ticketCountInfo: $ticketCountInfo, transactionFeatures: $transactionFeatures, isFavorited: $isFavorited, listingImageUrl: $listingImageUrl)';
}


}

/// @nodoc
abstract mixin class _$TicketingTicketDetailUiModelCopyWith<$Res> implements $TicketingTicketDetailUiModelCopyWith<$Res> {
  factory _$TicketingTicketDetailUiModelCopyWith(_TicketingTicketDetailUiModel value, $Res Function(_TicketingTicketDetailUiModel) _then) = __$TicketingTicketDetailUiModelCopyWithImpl;
@override @useResult
$Res call({
 int ticketId, String performanceTitle, String performanceImageUrl, DateTime performanceDate, String location, String ticketTitle, String gradeName, String? seatInfo, int price, int originalPrice, List<String> tags, TicketingSellerUiModel seller, String? description, List<String> images, String ticketCountInfo, List<String> transactionFeatures, bool isFavorited, String? listingImageUrl
});


@override $TicketingSellerUiModelCopyWith<$Res> get seller;

}
/// @nodoc
class __$TicketingTicketDetailUiModelCopyWithImpl<$Res>
    implements _$TicketingTicketDetailUiModelCopyWith<$Res> {
  __$TicketingTicketDetailUiModelCopyWithImpl(this._self, this._then);

  final _TicketingTicketDetailUiModel _self;
  final $Res Function(_TicketingTicketDetailUiModel) _then;

/// Create a copy of TicketingTicketDetailUiModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? ticketId = null,Object? performanceTitle = null,Object? performanceImageUrl = null,Object? performanceDate = null,Object? location = null,Object? ticketTitle = null,Object? gradeName = null,Object? seatInfo = freezed,Object? price = null,Object? originalPrice = null,Object? tags = null,Object? seller = null,Object? description = freezed,Object? images = null,Object? ticketCountInfo = null,Object? transactionFeatures = null,Object? isFavorited = null,Object? listingImageUrl = freezed,}) {
  return _then(_TicketingTicketDetailUiModel(
ticketId: null == ticketId ? _self.ticketId : ticketId // ignore: cast_nullable_to_non_nullable
as int,performanceTitle: null == performanceTitle ? _self.performanceTitle : performanceTitle // ignore: cast_nullable_to_non_nullable
as String,performanceImageUrl: null == performanceImageUrl ? _self.performanceImageUrl : performanceImageUrl // ignore: cast_nullable_to_non_nullable
as String,performanceDate: null == performanceDate ? _self.performanceDate : performanceDate // ignore: cast_nullable_to_non_nullable
as DateTime,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String,ticketTitle: null == ticketTitle ? _self.ticketTitle : ticketTitle // ignore: cast_nullable_to_non_nullable
as String,gradeName: null == gradeName ? _self.gradeName : gradeName // ignore: cast_nullable_to_non_nullable
as String,seatInfo: freezed == seatInfo ? _self.seatInfo : seatInfo // ignore: cast_nullable_to_non_nullable
as String?,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,originalPrice: null == originalPrice ? _self.originalPrice : originalPrice // ignore: cast_nullable_to_non_nullable
as int,tags: null == tags ? _self._tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,seller: null == seller ? _self.seller : seller // ignore: cast_nullable_to_non_nullable
as TicketingSellerUiModel,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,images: null == images ? _self._images : images // ignore: cast_nullable_to_non_nullable
as List<String>,ticketCountInfo: null == ticketCountInfo ? _self.ticketCountInfo : ticketCountInfo // ignore: cast_nullable_to_non_nullable
as String,transactionFeatures: null == transactionFeatures ? _self._transactionFeatures : transactionFeatures // ignore: cast_nullable_to_non_nullable
as List<String>,isFavorited: null == isFavorited ? _self.isFavorited : isFavorited // ignore: cast_nullable_to_non_nullable
as bool,listingImageUrl: freezed == listingImageUrl ? _self.listingImageUrl : listingImageUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of TicketingTicketDetailUiModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TicketingSellerUiModelCopyWith<$Res> get seller {
  
  return $TicketingSellerUiModelCopyWith<$Res>(_self.seller, (value) {
    return _then(_self.copyWith(seller: value));
  });
}
}

// dart format on
