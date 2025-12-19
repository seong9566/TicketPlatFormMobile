// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$EventEntity {

 String get id; String get title; String get posterImageUrl; DateTime get startDate; DateTime get endDate; String get location; Category get category;
/// Create a copy of EventEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EventEntityCopyWith<EventEntity> get copyWith => _$EventEntityCopyWithImpl<EventEntity>(this as EventEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EventEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.posterImageUrl, posterImageUrl) || other.posterImageUrl == posterImageUrl)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&(identical(other.location, location) || other.location == location)&&(identical(other.category, category) || other.category == category));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,posterImageUrl,startDate,endDate,location,category);

@override
String toString() {
  return 'EventEntity(id: $id, title: $title, posterImageUrl: $posterImageUrl, startDate: $startDate, endDate: $endDate, location: $location, category: $category)';
}


}

/// @nodoc
abstract mixin class $EventEntityCopyWith<$Res>  {
  factory $EventEntityCopyWith(EventEntity value, $Res Function(EventEntity) _then) = _$EventEntityCopyWithImpl;
@useResult
$Res call({
 String id, String title, String posterImageUrl, DateTime startDate, DateTime endDate, String location, Category category
});




}
/// @nodoc
class _$EventEntityCopyWithImpl<$Res>
    implements $EventEntityCopyWith<$Res> {
  _$EventEntityCopyWithImpl(this._self, this._then);

  final EventEntity _self;
  final $Res Function(EventEntity) _then;

/// Create a copy of EventEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? posterImageUrl = null,Object? startDate = null,Object? endDate = null,Object? location = null,Object? category = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,posterImageUrl: null == posterImageUrl ? _self.posterImageUrl : posterImageUrl // ignore: cast_nullable_to_non_nullable
as String,startDate: null == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as DateTime,endDate: null == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as DateTime,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as Category,
  ));
}

}


/// Adds pattern-matching-related methods to [EventEntity].
extension EventEntityPatterns on EventEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EventEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EventEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EventEntity value)  $default,){
final _that = this;
switch (_that) {
case _EventEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EventEntity value)?  $default,){
final _that = this;
switch (_that) {
case _EventEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title,  String posterImageUrl,  DateTime startDate,  DateTime endDate,  String location,  Category category)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EventEntity() when $default != null:
return $default(_that.id,_that.title,_that.posterImageUrl,_that.startDate,_that.endDate,_that.location,_that.category);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title,  String posterImageUrl,  DateTime startDate,  DateTime endDate,  String location,  Category category)  $default,) {final _that = this;
switch (_that) {
case _EventEntity():
return $default(_that.id,_that.title,_that.posterImageUrl,_that.startDate,_that.endDate,_that.location,_that.category);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title,  String posterImageUrl,  DateTime startDate,  DateTime endDate,  String location,  Category category)?  $default,) {final _that = this;
switch (_that) {
case _EventEntity() when $default != null:
return $default(_that.id,_that.title,_that.posterImageUrl,_that.startDate,_that.endDate,_that.location,_that.category);case _:
  return null;

}
}

}

/// @nodoc


class _EventEntity implements EventEntity {
  const _EventEntity({required this.id, required this.title, required this.posterImageUrl, required this.startDate, required this.endDate, required this.location, required this.category});
  

@override final  String id;
@override final  String title;
@override final  String posterImageUrl;
@override final  DateTime startDate;
@override final  DateTime endDate;
@override final  String location;
@override final  Category category;

/// Create a copy of EventEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EventEntityCopyWith<_EventEntity> get copyWith => __$EventEntityCopyWithImpl<_EventEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EventEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.posterImageUrl, posterImageUrl) || other.posterImageUrl == posterImageUrl)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&(identical(other.location, location) || other.location == location)&&(identical(other.category, category) || other.category == category));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,posterImageUrl,startDate,endDate,location,category);

@override
String toString() {
  return 'EventEntity(id: $id, title: $title, posterImageUrl: $posterImageUrl, startDate: $startDate, endDate: $endDate, location: $location, category: $category)';
}


}

/// @nodoc
abstract mixin class _$EventEntityCopyWith<$Res> implements $EventEntityCopyWith<$Res> {
  factory _$EventEntityCopyWith(_EventEntity value, $Res Function(_EventEntity) _then) = __$EventEntityCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, String posterImageUrl, DateTime startDate, DateTime endDate, String location, Category category
});




}
/// @nodoc
class __$EventEntityCopyWithImpl<$Res>
    implements _$EventEntityCopyWith<$Res> {
  __$EventEntityCopyWithImpl(this._self, this._then);

  final _EventEntity _self;
  final $Res Function(_EventEntity) _then;

/// Create a copy of EventEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? posterImageUrl = null,Object? startDate = null,Object? endDate = null,Object? location = null,Object? category = null,}) {
  return _then(_EventEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,posterImageUrl: null == posterImageUrl ? _self.posterImageUrl : posterImageUrl // ignore: cast_nullable_to_non_nullable
as String,startDate: null == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as DateTime,endDate: null == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as DateTime,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as Category,
  ));
}


}

// dart format on
