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

 String get id; String get category; String get title; DateTime get eventDate; int get price; String get imageUrl; DateTime get likedAt;
/// Create a copy of WishlistItemEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WishlistItemEntityCopyWith<WishlistItemEntity> get copyWith => _$WishlistItemEntityCopyWithImpl<WishlistItemEntity>(this as WishlistItemEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WishlistItemEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.category, category) || other.category == category)&&(identical(other.title, title) || other.title == title)&&(identical(other.eventDate, eventDate) || other.eventDate == eventDate)&&(identical(other.price, price) || other.price == price)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.likedAt, likedAt) || other.likedAt == likedAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,category,title,eventDate,price,imageUrl,likedAt);

@override
String toString() {
  return 'WishlistItemEntity(id: $id, category: $category, title: $title, eventDate: $eventDate, price: $price, imageUrl: $imageUrl, likedAt: $likedAt)';
}


}

/// @nodoc
abstract mixin class $WishlistItemEntityCopyWith<$Res>  {
  factory $WishlistItemEntityCopyWith(WishlistItemEntity value, $Res Function(WishlistItemEntity) _then) = _$WishlistItemEntityCopyWithImpl;
@useResult
$Res call({
 String id, String category, String title, DateTime eventDate, int price, String imageUrl, DateTime likedAt
});




}
/// @nodoc
class _$WishlistItemEntityCopyWithImpl<$Res>
    implements $WishlistItemEntityCopyWith<$Res> {
  _$WishlistItemEntityCopyWithImpl(this._self, this._then);

  final WishlistItemEntity _self;
  final $Res Function(WishlistItemEntity) _then;

/// Create a copy of WishlistItemEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? category = null,Object? title = null,Object? eventDate = null,Object? price = null,Object? imageUrl = null,Object? likedAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,eventDate: null == eventDate ? _self.eventDate : eventDate // ignore: cast_nullable_to_non_nullable
as DateTime,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,likedAt: null == likedAt ? _self.likedAt : likedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String category,  String title,  DateTime eventDate,  int price,  String imageUrl,  DateTime likedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WishlistItemEntity() when $default != null:
return $default(_that.id,_that.category,_that.title,_that.eventDate,_that.price,_that.imageUrl,_that.likedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String category,  String title,  DateTime eventDate,  int price,  String imageUrl,  DateTime likedAt)  $default,) {final _that = this;
switch (_that) {
case _WishlistItemEntity():
return $default(_that.id,_that.category,_that.title,_that.eventDate,_that.price,_that.imageUrl,_that.likedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String category,  String title,  DateTime eventDate,  int price,  String imageUrl,  DateTime likedAt)?  $default,) {final _that = this;
switch (_that) {
case _WishlistItemEntity() when $default != null:
return $default(_that.id,_that.category,_that.title,_that.eventDate,_that.price,_that.imageUrl,_that.likedAt);case _:
  return null;

}
}

}

/// @nodoc


class _WishlistItemEntity implements WishlistItemEntity {
  const _WishlistItemEntity({required this.id, required this.category, required this.title, required this.eventDate, required this.price, required this.imageUrl, required this.likedAt});
  

@override final  String id;
@override final  String category;
@override final  String title;
@override final  DateTime eventDate;
@override final  int price;
@override final  String imageUrl;
@override final  DateTime likedAt;

/// Create a copy of WishlistItemEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WishlistItemEntityCopyWith<_WishlistItemEntity> get copyWith => __$WishlistItemEntityCopyWithImpl<_WishlistItemEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WishlistItemEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.category, category) || other.category == category)&&(identical(other.title, title) || other.title == title)&&(identical(other.eventDate, eventDate) || other.eventDate == eventDate)&&(identical(other.price, price) || other.price == price)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.likedAt, likedAt) || other.likedAt == likedAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,category,title,eventDate,price,imageUrl,likedAt);

@override
String toString() {
  return 'WishlistItemEntity(id: $id, category: $category, title: $title, eventDate: $eventDate, price: $price, imageUrl: $imageUrl, likedAt: $likedAt)';
}


}

/// @nodoc
abstract mixin class _$WishlistItemEntityCopyWith<$Res> implements $WishlistItemEntityCopyWith<$Res> {
  factory _$WishlistItemEntityCopyWith(_WishlistItemEntity value, $Res Function(_WishlistItemEntity) _then) = __$WishlistItemEntityCopyWithImpl;
@override @useResult
$Res call({
 String id, String category, String title, DateTime eventDate, int price, String imageUrl, DateTime likedAt
});




}
/// @nodoc
class __$WishlistItemEntityCopyWithImpl<$Res>
    implements _$WishlistItemEntityCopyWith<$Res> {
  __$WishlistItemEntityCopyWithImpl(this._self, this._then);

  final _WishlistItemEntity _self;
  final $Res Function(_WishlistItemEntity) _then;

/// Create a copy of WishlistItemEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? category = null,Object? title = null,Object? eventDate = null,Object? price = null,Object? imageUrl = null,Object? likedAt = null,}) {
  return _then(_WishlistItemEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,eventDate: null == eventDate ? _self.eventDate : eventDate // ignore: cast_nullable_to_non_nullable
as DateTime,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,likedAt: null == likedAt ? _self.likedAt : likedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
