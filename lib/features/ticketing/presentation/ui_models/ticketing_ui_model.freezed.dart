// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ticketing_ui_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TicketingUiModel {

 String get id; String get title; String get imageUrl; DateTime get eventDate; String get location; List<TicketGradeInfo> get ticketGrades; List<TicketListingUiModel> get listings; bool get isHot;
/// Create a copy of TicketingUiModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TicketingUiModelCopyWith<TicketingUiModel> get copyWith => _$TicketingUiModelCopyWithImpl<TicketingUiModel>(this as TicketingUiModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TicketingUiModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.eventDate, eventDate) || other.eventDate == eventDate)&&(identical(other.location, location) || other.location == location)&&const DeepCollectionEquality().equals(other.ticketGrades, ticketGrades)&&const DeepCollectionEquality().equals(other.listings, listings)&&(identical(other.isHot, isHot) || other.isHot == isHot));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,imageUrl,eventDate,location,const DeepCollectionEquality().hash(ticketGrades),const DeepCollectionEquality().hash(listings),isHot);

@override
String toString() {
  return 'TicketingUiModel(id: $id, title: $title, imageUrl: $imageUrl, eventDate: $eventDate, location: $location, ticketGrades: $ticketGrades, listings: $listings, isHot: $isHot)';
}


}

/// @nodoc
abstract mixin class $TicketingUiModelCopyWith<$Res>  {
  factory $TicketingUiModelCopyWith(TicketingUiModel value, $Res Function(TicketingUiModel) _then) = _$TicketingUiModelCopyWithImpl;
@useResult
$Res call({
 String id, String title, String imageUrl, DateTime eventDate, String location, List<TicketGradeInfo> ticketGrades, List<TicketListingUiModel> listings, bool isHot
});




}
/// @nodoc
class _$TicketingUiModelCopyWithImpl<$Res>
    implements $TicketingUiModelCopyWith<$Res> {
  _$TicketingUiModelCopyWithImpl(this._self, this._then);

  final TicketingUiModel _self;
  final $Res Function(TicketingUiModel) _then;

/// Create a copy of TicketingUiModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? imageUrl = null,Object? eventDate = null,Object? location = null,Object? ticketGrades = null,Object? listings = null,Object? isHot = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,eventDate: null == eventDate ? _self.eventDate : eventDate // ignore: cast_nullable_to_non_nullable
as DateTime,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String,ticketGrades: null == ticketGrades ? _self.ticketGrades : ticketGrades // ignore: cast_nullable_to_non_nullable
as List<TicketGradeInfo>,listings: null == listings ? _self.listings : listings // ignore: cast_nullable_to_non_nullable
as List<TicketListingUiModel>,isHot: null == isHot ? _self.isHot : isHot // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [TicketingUiModel].
extension TicketingUiModelPatterns on TicketingUiModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TicketingUiModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TicketingUiModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TicketingUiModel value)  $default,){
final _that = this;
switch (_that) {
case _TicketingUiModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TicketingUiModel value)?  $default,){
final _that = this;
switch (_that) {
case _TicketingUiModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title,  String imageUrl,  DateTime eventDate,  String location,  List<TicketGradeInfo> ticketGrades,  List<TicketListingUiModel> listings,  bool isHot)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TicketingUiModel() when $default != null:
return $default(_that.id,_that.title,_that.imageUrl,_that.eventDate,_that.location,_that.ticketGrades,_that.listings,_that.isHot);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title,  String imageUrl,  DateTime eventDate,  String location,  List<TicketGradeInfo> ticketGrades,  List<TicketListingUiModel> listings,  bool isHot)  $default,) {final _that = this;
switch (_that) {
case _TicketingUiModel():
return $default(_that.id,_that.title,_that.imageUrl,_that.eventDate,_that.location,_that.ticketGrades,_that.listings,_that.isHot);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title,  String imageUrl,  DateTime eventDate,  String location,  List<TicketGradeInfo> ticketGrades,  List<TicketListingUiModel> listings,  bool isHot)?  $default,) {final _that = this;
switch (_that) {
case _TicketingUiModel() when $default != null:
return $default(_that.id,_that.title,_that.imageUrl,_that.eventDate,_that.location,_that.ticketGrades,_that.listings,_that.isHot);case _:
  return null;

}
}

}

/// @nodoc


class _TicketingUiModel implements TicketingUiModel {
  const _TicketingUiModel({required this.id, required this.title, required this.imageUrl, required this.eventDate, required this.location, required final  List<TicketGradeInfo> ticketGrades, required final  List<TicketListingUiModel> listings, this.isHot = false}): _ticketGrades = ticketGrades,_listings = listings;
  

@override final  String id;
@override final  String title;
@override final  String imageUrl;
@override final  DateTime eventDate;
@override final  String location;
 final  List<TicketGradeInfo> _ticketGrades;
@override List<TicketGradeInfo> get ticketGrades {
  if (_ticketGrades is EqualUnmodifiableListView) return _ticketGrades;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_ticketGrades);
}

 final  List<TicketListingUiModel> _listings;
@override List<TicketListingUiModel> get listings {
  if (_listings is EqualUnmodifiableListView) return _listings;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_listings);
}

@override@JsonKey() final  bool isHot;

/// Create a copy of TicketingUiModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TicketingUiModelCopyWith<_TicketingUiModel> get copyWith => __$TicketingUiModelCopyWithImpl<_TicketingUiModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TicketingUiModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.eventDate, eventDate) || other.eventDate == eventDate)&&(identical(other.location, location) || other.location == location)&&const DeepCollectionEquality().equals(other._ticketGrades, _ticketGrades)&&const DeepCollectionEquality().equals(other._listings, _listings)&&(identical(other.isHot, isHot) || other.isHot == isHot));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,imageUrl,eventDate,location,const DeepCollectionEquality().hash(_ticketGrades),const DeepCollectionEquality().hash(_listings),isHot);

@override
String toString() {
  return 'TicketingUiModel(id: $id, title: $title, imageUrl: $imageUrl, eventDate: $eventDate, location: $location, ticketGrades: $ticketGrades, listings: $listings, isHot: $isHot)';
}


}

/// @nodoc
abstract mixin class _$TicketingUiModelCopyWith<$Res> implements $TicketingUiModelCopyWith<$Res> {
  factory _$TicketingUiModelCopyWith(_TicketingUiModel value, $Res Function(_TicketingUiModel) _then) = __$TicketingUiModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, String imageUrl, DateTime eventDate, String location, List<TicketGradeInfo> ticketGrades, List<TicketListingUiModel> listings, bool isHot
});




}
/// @nodoc
class __$TicketingUiModelCopyWithImpl<$Res>
    implements _$TicketingUiModelCopyWith<$Res> {
  __$TicketingUiModelCopyWithImpl(this._self, this._then);

  final _TicketingUiModel _self;
  final $Res Function(_TicketingUiModel) _then;

/// Create a copy of TicketingUiModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? imageUrl = null,Object? eventDate = null,Object? location = null,Object? ticketGrades = null,Object? listings = null,Object? isHot = null,}) {
  return _then(_TicketingUiModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,eventDate: null == eventDate ? _self.eventDate : eventDate // ignore: cast_nullable_to_non_nullable
as DateTime,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String,ticketGrades: null == ticketGrades ? _self._ticketGrades : ticketGrades // ignore: cast_nullable_to_non_nullable
as List<TicketGradeInfo>,listings: null == listings ? _self._listings : listings // ignore: cast_nullable_to_non_nullable
as List<TicketListingUiModel>,isHot: null == isHot ? _self.isHot : isHot // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc
mixin _$TicketGradeInfo {

 String get id; String get name;// e.g., '전체좌석', 'VIP석', 'R석', 'S석'
 int get count;
/// Create a copy of TicketGradeInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TicketGradeInfoCopyWith<TicketGradeInfo> get copyWith => _$TicketGradeInfoCopyWithImpl<TicketGradeInfo>(this as TicketGradeInfo, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TicketGradeInfo&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.count, count) || other.count == count));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,count);

@override
String toString() {
  return 'TicketGradeInfo(id: $id, name: $name, count: $count)';
}


}

/// @nodoc
abstract mixin class $TicketGradeInfoCopyWith<$Res>  {
  factory $TicketGradeInfoCopyWith(TicketGradeInfo value, $Res Function(TicketGradeInfo) _then) = _$TicketGradeInfoCopyWithImpl;
@useResult
$Res call({
 String id, String name, int count
});




}
/// @nodoc
class _$TicketGradeInfoCopyWithImpl<$Res>
    implements $TicketGradeInfoCopyWith<$Res> {
  _$TicketGradeInfoCopyWithImpl(this._self, this._then);

  final TicketGradeInfo _self;
  final $Res Function(TicketGradeInfo) _then;

/// Create a copy of TicketGradeInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? count = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [TicketGradeInfo].
extension TicketGradeInfoPatterns on TicketGradeInfo {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TicketGradeInfo value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TicketGradeInfo() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TicketGradeInfo value)  $default,){
final _that = this;
switch (_that) {
case _TicketGradeInfo():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TicketGradeInfo value)?  $default,){
final _that = this;
switch (_that) {
case _TicketGradeInfo() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  int count)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TicketGradeInfo() when $default != null:
return $default(_that.id,_that.name,_that.count);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  int count)  $default,) {final _that = this;
switch (_that) {
case _TicketGradeInfo():
return $default(_that.id,_that.name,_that.count);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  int count)?  $default,) {final _that = this;
switch (_that) {
case _TicketGradeInfo() when $default != null:
return $default(_that.id,_that.name,_that.count);case _:
  return null;

}
}

}

/// @nodoc


class _TicketGradeInfo implements TicketGradeInfo {
  const _TicketGradeInfo({required this.id, required this.name, required this.count});
  

@override final  String id;
@override final  String name;
// e.g., '전체좌석', 'VIP석', 'R석', 'S석'
@override final  int count;

/// Create a copy of TicketGradeInfo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TicketGradeInfoCopyWith<_TicketGradeInfo> get copyWith => __$TicketGradeInfoCopyWithImpl<_TicketGradeInfo>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TicketGradeInfo&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.count, count) || other.count == count));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,count);

@override
String toString() {
  return 'TicketGradeInfo(id: $id, name: $name, count: $count)';
}


}

/// @nodoc
abstract mixin class _$TicketGradeInfoCopyWith<$Res> implements $TicketGradeInfoCopyWith<$Res> {
  factory _$TicketGradeInfoCopyWith(_TicketGradeInfo value, $Res Function(_TicketGradeInfo) _then) = __$TicketGradeInfoCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, int count
});




}
/// @nodoc
class __$TicketGradeInfoCopyWithImpl<$Res>
    implements _$TicketGradeInfoCopyWith<$Res> {
  __$TicketGradeInfoCopyWithImpl(this._self, this._then);

  final _TicketGradeInfo _self;
  final $Res Function(_TicketGradeInfo) _then;

/// Create a copy of TicketGradeInfo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? count = null,}) {
  return _then(_TicketGradeInfo(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$TicketListingUiModel {

 String get id; String get gradeName;// 'VIP석', 'R석'
 String get seatInfo;// '1층 5구역 3열'
 int get price; int get originalPrice; List<String> get tags;// ['연석 보유', '시야제한 없음']
 SellerUiModel get seller; String get description; DateTime get createdAt; String get ticketCountInfo; List<String> get transactionFeatures;// ['배송지 변경', '안심결제 가능', '예매 내역서', '연석 보유']
 String? get listingImageUrl;
/// Create a copy of TicketListingUiModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TicketListingUiModelCopyWith<TicketListingUiModel> get copyWith => _$TicketListingUiModelCopyWithImpl<TicketListingUiModel>(this as TicketListingUiModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TicketListingUiModel&&(identical(other.id, id) || other.id == id)&&(identical(other.gradeName, gradeName) || other.gradeName == gradeName)&&(identical(other.seatInfo, seatInfo) || other.seatInfo == seatInfo)&&(identical(other.price, price) || other.price == price)&&(identical(other.originalPrice, originalPrice) || other.originalPrice == originalPrice)&&const DeepCollectionEquality().equals(other.tags, tags)&&(identical(other.seller, seller) || other.seller == seller)&&(identical(other.description, description) || other.description == description)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.ticketCountInfo, ticketCountInfo) || other.ticketCountInfo == ticketCountInfo)&&const DeepCollectionEquality().equals(other.transactionFeatures, transactionFeatures)&&(identical(other.listingImageUrl, listingImageUrl) || other.listingImageUrl == listingImageUrl));
}


@override
int get hashCode => Object.hash(runtimeType,id,gradeName,seatInfo,price,originalPrice,const DeepCollectionEquality().hash(tags),seller,description,createdAt,ticketCountInfo,const DeepCollectionEquality().hash(transactionFeatures),listingImageUrl);

@override
String toString() {
  return 'TicketListingUiModel(id: $id, gradeName: $gradeName, seatInfo: $seatInfo, price: $price, originalPrice: $originalPrice, tags: $tags, seller: $seller, description: $description, createdAt: $createdAt, ticketCountInfo: $ticketCountInfo, transactionFeatures: $transactionFeatures, listingImageUrl: $listingImageUrl)';
}


}

/// @nodoc
abstract mixin class $TicketListingUiModelCopyWith<$Res>  {
  factory $TicketListingUiModelCopyWith(TicketListingUiModel value, $Res Function(TicketListingUiModel) _then) = _$TicketListingUiModelCopyWithImpl;
@useResult
$Res call({
 String id, String gradeName, String seatInfo, int price, int originalPrice, List<String> tags, SellerUiModel seller, String description, DateTime createdAt, String ticketCountInfo, List<String> transactionFeatures, String? listingImageUrl
});


$SellerUiModelCopyWith<$Res> get seller;

}
/// @nodoc
class _$TicketListingUiModelCopyWithImpl<$Res>
    implements $TicketListingUiModelCopyWith<$Res> {
  _$TicketListingUiModelCopyWithImpl(this._self, this._then);

  final TicketListingUiModel _self;
  final $Res Function(TicketListingUiModel) _then;

/// Create a copy of TicketListingUiModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? gradeName = null,Object? seatInfo = null,Object? price = null,Object? originalPrice = null,Object? tags = null,Object? seller = null,Object? description = null,Object? createdAt = null,Object? ticketCountInfo = null,Object? transactionFeatures = null,Object? listingImageUrl = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,gradeName: null == gradeName ? _self.gradeName : gradeName // ignore: cast_nullable_to_non_nullable
as String,seatInfo: null == seatInfo ? _self.seatInfo : seatInfo // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,originalPrice: null == originalPrice ? _self.originalPrice : originalPrice // ignore: cast_nullable_to_non_nullable
as int,tags: null == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,seller: null == seller ? _self.seller : seller // ignore: cast_nullable_to_non_nullable
as SellerUiModel,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,ticketCountInfo: null == ticketCountInfo ? _self.ticketCountInfo : ticketCountInfo // ignore: cast_nullable_to_non_nullable
as String,transactionFeatures: null == transactionFeatures ? _self.transactionFeatures : transactionFeatures // ignore: cast_nullable_to_non_nullable
as List<String>,listingImageUrl: freezed == listingImageUrl ? _self.listingImageUrl : listingImageUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of TicketListingUiModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SellerUiModelCopyWith<$Res> get seller {
  
  return $SellerUiModelCopyWith<$Res>(_self.seller, (value) {
    return _then(_self.copyWith(seller: value));
  });
}
}


/// Adds pattern-matching-related methods to [TicketListingUiModel].
extension TicketListingUiModelPatterns on TicketListingUiModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TicketListingUiModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TicketListingUiModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TicketListingUiModel value)  $default,){
final _that = this;
switch (_that) {
case _TicketListingUiModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TicketListingUiModel value)?  $default,){
final _that = this;
switch (_that) {
case _TicketListingUiModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String gradeName,  String seatInfo,  int price,  int originalPrice,  List<String> tags,  SellerUiModel seller,  String description,  DateTime createdAt,  String ticketCountInfo,  List<String> transactionFeatures,  String? listingImageUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TicketListingUiModel() when $default != null:
return $default(_that.id,_that.gradeName,_that.seatInfo,_that.price,_that.originalPrice,_that.tags,_that.seller,_that.description,_that.createdAt,_that.ticketCountInfo,_that.transactionFeatures,_that.listingImageUrl);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String gradeName,  String seatInfo,  int price,  int originalPrice,  List<String> tags,  SellerUiModel seller,  String description,  DateTime createdAt,  String ticketCountInfo,  List<String> transactionFeatures,  String? listingImageUrl)  $default,) {final _that = this;
switch (_that) {
case _TicketListingUiModel():
return $default(_that.id,_that.gradeName,_that.seatInfo,_that.price,_that.originalPrice,_that.tags,_that.seller,_that.description,_that.createdAt,_that.ticketCountInfo,_that.transactionFeatures,_that.listingImageUrl);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String gradeName,  String seatInfo,  int price,  int originalPrice,  List<String> tags,  SellerUiModel seller,  String description,  DateTime createdAt,  String ticketCountInfo,  List<String> transactionFeatures,  String? listingImageUrl)?  $default,) {final _that = this;
switch (_that) {
case _TicketListingUiModel() when $default != null:
return $default(_that.id,_that.gradeName,_that.seatInfo,_that.price,_that.originalPrice,_that.tags,_that.seller,_that.description,_that.createdAt,_that.ticketCountInfo,_that.transactionFeatures,_that.listingImageUrl);case _:
  return null;

}
}

}

/// @nodoc


class _TicketListingUiModel implements TicketListingUiModel {
  const _TicketListingUiModel({required this.id, required this.gradeName, required this.seatInfo, required this.price, required this.originalPrice, required final  List<String> tags, required this.seller, required this.description, required this.createdAt, this.ticketCountInfo = '1인 1매', final  List<String> transactionFeatures = const [], this.listingImageUrl}): _tags = tags,_transactionFeatures = transactionFeatures;
  

@override final  String id;
@override final  String gradeName;
// 'VIP석', 'R석'
@override final  String seatInfo;
// '1층 5구역 3열'
@override final  int price;
@override final  int originalPrice;
 final  List<String> _tags;
@override List<String> get tags {
  if (_tags is EqualUnmodifiableListView) return _tags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tags);
}

// ['연석 보유', '시야제한 없음']
@override final  SellerUiModel seller;
@override final  String description;
@override final  DateTime createdAt;
@override@JsonKey() final  String ticketCountInfo;
 final  List<String> _transactionFeatures;
@override@JsonKey() List<String> get transactionFeatures {
  if (_transactionFeatures is EqualUnmodifiableListView) return _transactionFeatures;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_transactionFeatures);
}

// ['배송지 변경', '안심결제 가능', '예매 내역서', '연석 보유']
@override final  String? listingImageUrl;

/// Create a copy of TicketListingUiModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TicketListingUiModelCopyWith<_TicketListingUiModel> get copyWith => __$TicketListingUiModelCopyWithImpl<_TicketListingUiModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TicketListingUiModel&&(identical(other.id, id) || other.id == id)&&(identical(other.gradeName, gradeName) || other.gradeName == gradeName)&&(identical(other.seatInfo, seatInfo) || other.seatInfo == seatInfo)&&(identical(other.price, price) || other.price == price)&&(identical(other.originalPrice, originalPrice) || other.originalPrice == originalPrice)&&const DeepCollectionEquality().equals(other._tags, _tags)&&(identical(other.seller, seller) || other.seller == seller)&&(identical(other.description, description) || other.description == description)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.ticketCountInfo, ticketCountInfo) || other.ticketCountInfo == ticketCountInfo)&&const DeepCollectionEquality().equals(other._transactionFeatures, _transactionFeatures)&&(identical(other.listingImageUrl, listingImageUrl) || other.listingImageUrl == listingImageUrl));
}


@override
int get hashCode => Object.hash(runtimeType,id,gradeName,seatInfo,price,originalPrice,const DeepCollectionEquality().hash(_tags),seller,description,createdAt,ticketCountInfo,const DeepCollectionEquality().hash(_transactionFeatures),listingImageUrl);

@override
String toString() {
  return 'TicketListingUiModel(id: $id, gradeName: $gradeName, seatInfo: $seatInfo, price: $price, originalPrice: $originalPrice, tags: $tags, seller: $seller, description: $description, createdAt: $createdAt, ticketCountInfo: $ticketCountInfo, transactionFeatures: $transactionFeatures, listingImageUrl: $listingImageUrl)';
}


}

/// @nodoc
abstract mixin class _$TicketListingUiModelCopyWith<$Res> implements $TicketListingUiModelCopyWith<$Res> {
  factory _$TicketListingUiModelCopyWith(_TicketListingUiModel value, $Res Function(_TicketListingUiModel) _then) = __$TicketListingUiModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String gradeName, String seatInfo, int price, int originalPrice, List<String> tags, SellerUiModel seller, String description, DateTime createdAt, String ticketCountInfo, List<String> transactionFeatures, String? listingImageUrl
});


@override $SellerUiModelCopyWith<$Res> get seller;

}
/// @nodoc
class __$TicketListingUiModelCopyWithImpl<$Res>
    implements _$TicketListingUiModelCopyWith<$Res> {
  __$TicketListingUiModelCopyWithImpl(this._self, this._then);

  final _TicketListingUiModel _self;
  final $Res Function(_TicketListingUiModel) _then;

/// Create a copy of TicketListingUiModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? gradeName = null,Object? seatInfo = null,Object? price = null,Object? originalPrice = null,Object? tags = null,Object? seller = null,Object? description = null,Object? createdAt = null,Object? ticketCountInfo = null,Object? transactionFeatures = null,Object? listingImageUrl = freezed,}) {
  return _then(_TicketListingUiModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,gradeName: null == gradeName ? _self.gradeName : gradeName // ignore: cast_nullable_to_non_nullable
as String,seatInfo: null == seatInfo ? _self.seatInfo : seatInfo // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,originalPrice: null == originalPrice ? _self.originalPrice : originalPrice // ignore: cast_nullable_to_non_nullable
as int,tags: null == tags ? _self._tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,seller: null == seller ? _self.seller : seller // ignore: cast_nullable_to_non_nullable
as SellerUiModel,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,ticketCountInfo: null == ticketCountInfo ? _self.ticketCountInfo : ticketCountInfo // ignore: cast_nullable_to_non_nullable
as String,transactionFeatures: null == transactionFeatures ? _self._transactionFeatures : transactionFeatures // ignore: cast_nullable_to_non_nullable
as List<String>,listingImageUrl: freezed == listingImageUrl ? _self.listingImageUrl : listingImageUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of TicketListingUiModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SellerUiModelCopyWith<$Res> get seller {
  
  return $SellerUiModelCopyWith<$Res>(_self.seller, (value) {
    return _then(_self.copyWith(seller: value));
  });
}
}

/// @nodoc
mixin _$SellerUiModel {

 String get id; String get nickname; String get profileImageUrl; double get mannerTemperature;// '매너 99.9'
 int get responseRate; int get transactionCount;
/// Create a copy of SellerUiModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SellerUiModelCopyWith<SellerUiModel> get copyWith => _$SellerUiModelCopyWithImpl<SellerUiModel>(this as SellerUiModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SellerUiModel&&(identical(other.id, id) || other.id == id)&&(identical(other.nickname, nickname) || other.nickname == nickname)&&(identical(other.profileImageUrl, profileImageUrl) || other.profileImageUrl == profileImageUrl)&&(identical(other.mannerTemperature, mannerTemperature) || other.mannerTemperature == mannerTemperature)&&(identical(other.responseRate, responseRate) || other.responseRate == responseRate)&&(identical(other.transactionCount, transactionCount) || other.transactionCount == transactionCount));
}


@override
int get hashCode => Object.hash(runtimeType,id,nickname,profileImageUrl,mannerTemperature,responseRate,transactionCount);

@override
String toString() {
  return 'SellerUiModel(id: $id, nickname: $nickname, profileImageUrl: $profileImageUrl, mannerTemperature: $mannerTemperature, responseRate: $responseRate, transactionCount: $transactionCount)';
}


}

/// @nodoc
abstract mixin class $SellerUiModelCopyWith<$Res>  {
  factory $SellerUiModelCopyWith(SellerUiModel value, $Res Function(SellerUiModel) _then) = _$SellerUiModelCopyWithImpl;
@useResult
$Res call({
 String id, String nickname, String profileImageUrl, double mannerTemperature, int responseRate, int transactionCount
});




}
/// @nodoc
class _$SellerUiModelCopyWithImpl<$Res>
    implements $SellerUiModelCopyWith<$Res> {
  _$SellerUiModelCopyWithImpl(this._self, this._then);

  final SellerUiModel _self;
  final $Res Function(SellerUiModel) _then;

/// Create a copy of SellerUiModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? nickname = null,Object? profileImageUrl = null,Object? mannerTemperature = null,Object? responseRate = null,Object? transactionCount = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,nickname: null == nickname ? _self.nickname : nickname // ignore: cast_nullable_to_non_nullable
as String,profileImageUrl: null == profileImageUrl ? _self.profileImageUrl : profileImageUrl // ignore: cast_nullable_to_non_nullable
as String,mannerTemperature: null == mannerTemperature ? _self.mannerTemperature : mannerTemperature // ignore: cast_nullable_to_non_nullable
as double,responseRate: null == responseRate ? _self.responseRate : responseRate // ignore: cast_nullable_to_non_nullable
as int,transactionCount: null == transactionCount ? _self.transactionCount : transactionCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [SellerUiModel].
extension SellerUiModelPatterns on SellerUiModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SellerUiModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SellerUiModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SellerUiModel value)  $default,){
final _that = this;
switch (_that) {
case _SellerUiModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SellerUiModel value)?  $default,){
final _that = this;
switch (_that) {
case _SellerUiModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String nickname,  String profileImageUrl,  double mannerTemperature,  int responseRate,  int transactionCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SellerUiModel() when $default != null:
return $default(_that.id,_that.nickname,_that.profileImageUrl,_that.mannerTemperature,_that.responseRate,_that.transactionCount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String nickname,  String profileImageUrl,  double mannerTemperature,  int responseRate,  int transactionCount)  $default,) {final _that = this;
switch (_that) {
case _SellerUiModel():
return $default(_that.id,_that.nickname,_that.profileImageUrl,_that.mannerTemperature,_that.responseRate,_that.transactionCount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String nickname,  String profileImageUrl,  double mannerTemperature,  int responseRate,  int transactionCount)?  $default,) {final _that = this;
switch (_that) {
case _SellerUiModel() when $default != null:
return $default(_that.id,_that.nickname,_that.profileImageUrl,_that.mannerTemperature,_that.responseRate,_that.transactionCount);case _:
  return null;

}
}

}

/// @nodoc


class _SellerUiModel implements SellerUiModel {
  const _SellerUiModel({required this.id, required this.nickname, required this.profileImageUrl, required this.mannerTemperature, this.responseRate = 98, this.transactionCount = 15});
  

@override final  String id;
@override final  String nickname;
@override final  String profileImageUrl;
@override final  double mannerTemperature;
// '매너 99.9'
@override@JsonKey() final  int responseRate;
@override@JsonKey() final  int transactionCount;

/// Create a copy of SellerUiModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SellerUiModelCopyWith<_SellerUiModel> get copyWith => __$SellerUiModelCopyWithImpl<_SellerUiModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SellerUiModel&&(identical(other.id, id) || other.id == id)&&(identical(other.nickname, nickname) || other.nickname == nickname)&&(identical(other.profileImageUrl, profileImageUrl) || other.profileImageUrl == profileImageUrl)&&(identical(other.mannerTemperature, mannerTemperature) || other.mannerTemperature == mannerTemperature)&&(identical(other.responseRate, responseRate) || other.responseRate == responseRate)&&(identical(other.transactionCount, transactionCount) || other.transactionCount == transactionCount));
}


@override
int get hashCode => Object.hash(runtimeType,id,nickname,profileImageUrl,mannerTemperature,responseRate,transactionCount);

@override
String toString() {
  return 'SellerUiModel(id: $id, nickname: $nickname, profileImageUrl: $profileImageUrl, mannerTemperature: $mannerTemperature, responseRate: $responseRate, transactionCount: $transactionCount)';
}


}

/// @nodoc
abstract mixin class _$SellerUiModelCopyWith<$Res> implements $SellerUiModelCopyWith<$Res> {
  factory _$SellerUiModelCopyWith(_SellerUiModel value, $Res Function(_SellerUiModel) _then) = __$SellerUiModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String nickname, String profileImageUrl, double mannerTemperature, int responseRate, int transactionCount
});




}
/// @nodoc
class __$SellerUiModelCopyWithImpl<$Res>
    implements _$SellerUiModelCopyWith<$Res> {
  __$SellerUiModelCopyWithImpl(this._self, this._then);

  final _SellerUiModel _self;
  final $Res Function(_SellerUiModel) _then;

/// Create a copy of SellerUiModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? nickname = null,Object? profileImageUrl = null,Object? mannerTemperature = null,Object? responseRate = null,Object? transactionCount = null,}) {
  return _then(_SellerUiModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,nickname: null == nickname ? _self.nickname : nickname // ignore: cast_nullable_to_non_nullable
as String,profileImageUrl: null == profileImageUrl ? _self.profileImageUrl : profileImageUrl // ignore: cast_nullable_to_non_nullable
as String,mannerTemperature: null == mannerTemperature ? _self.mannerTemperature : mannerTemperature // ignore: cast_nullable_to_non_nullable
as double,responseRate: null == responseRate ? _self.responseRate : responseRate // ignore: cast_nullable_to_non_nullable
as int,transactionCount: null == transactionCount ? _self.transactionCount : transactionCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
