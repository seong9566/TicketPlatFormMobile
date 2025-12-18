// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event_session_resp_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EventSessionRespDto {

 int get id; String get name; String get englishName; String get title; String get imageUrl; bool get isNew; bool get isHot; bool get isSoldOut; int get ticketCount;
/// Create a copy of EventSessionRespDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EventSessionRespDtoCopyWith<EventSessionRespDto> get copyWith => _$EventSessionRespDtoCopyWithImpl<EventSessionRespDto>(this as EventSessionRespDto, _$identity);

  /// Serializes this EventSessionRespDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EventSessionRespDto&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.englishName, englishName) || other.englishName == englishName)&&(identical(other.title, title) || other.title == title)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.isNew, isNew) || other.isNew == isNew)&&(identical(other.isHot, isHot) || other.isHot == isHot)&&(identical(other.isSoldOut, isSoldOut) || other.isSoldOut == isSoldOut)&&(identical(other.ticketCount, ticketCount) || other.ticketCount == ticketCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,englishName,title,imageUrl,isNew,isHot,isSoldOut,ticketCount);

@override
String toString() {
  return 'EventSessionRespDto(id: $id, name: $name, englishName: $englishName, title: $title, imageUrl: $imageUrl, isNew: $isNew, isHot: $isHot, isSoldOut: $isSoldOut, ticketCount: $ticketCount)';
}


}

/// @nodoc
abstract mixin class $EventSessionRespDtoCopyWith<$Res>  {
  factory $EventSessionRespDtoCopyWith(EventSessionRespDto value, $Res Function(EventSessionRespDto) _then) = _$EventSessionRespDtoCopyWithImpl;
@useResult
$Res call({
 int id, String name, String englishName, String title, String imageUrl, bool isNew, bool isHot, bool isSoldOut, int ticketCount
});




}
/// @nodoc
class _$EventSessionRespDtoCopyWithImpl<$Res>
    implements $EventSessionRespDtoCopyWith<$Res> {
  _$EventSessionRespDtoCopyWithImpl(this._self, this._then);

  final EventSessionRespDto _self;
  final $Res Function(EventSessionRespDto) _then;

/// Create a copy of EventSessionRespDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? englishName = null,Object? title = null,Object? imageUrl = null,Object? isNew = null,Object? isHot = null,Object? isSoldOut = null,Object? ticketCount = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,englishName: null == englishName ? _self.englishName : englishName // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,isNew: null == isNew ? _self.isNew : isNew // ignore: cast_nullable_to_non_nullable
as bool,isHot: null == isHot ? _self.isHot : isHot // ignore: cast_nullable_to_non_nullable
as bool,isSoldOut: null == isSoldOut ? _self.isSoldOut : isSoldOut // ignore: cast_nullable_to_non_nullable
as bool,ticketCount: null == ticketCount ? _self.ticketCount : ticketCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [EventSessionRespDto].
extension EventSessionRespDtoPatterns on EventSessionRespDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EventSessionRespDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EventSessionRespDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EventSessionRespDto value)  $default,){
final _that = this;
switch (_that) {
case _EventSessionRespDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EventSessionRespDto value)?  $default,){
final _that = this;
switch (_that) {
case _EventSessionRespDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  String englishName,  String title,  String imageUrl,  bool isNew,  bool isHot,  bool isSoldOut,  int ticketCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EventSessionRespDto() when $default != null:
return $default(_that.id,_that.name,_that.englishName,_that.title,_that.imageUrl,_that.isNew,_that.isHot,_that.isSoldOut,_that.ticketCount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  String englishName,  String title,  String imageUrl,  bool isNew,  bool isHot,  bool isSoldOut,  int ticketCount)  $default,) {final _that = this;
switch (_that) {
case _EventSessionRespDto():
return $default(_that.id,_that.name,_that.englishName,_that.title,_that.imageUrl,_that.isNew,_that.isHot,_that.isSoldOut,_that.ticketCount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  String englishName,  String title,  String imageUrl,  bool isNew,  bool isHot,  bool isSoldOut,  int ticketCount)?  $default,) {final _that = this;
switch (_that) {
case _EventSessionRespDto() when $default != null:
return $default(_that.id,_that.name,_that.englishName,_that.title,_that.imageUrl,_that.isNew,_that.isHot,_that.isSoldOut,_that.ticketCount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EventSessionRespDto implements EventSessionRespDto {
  const _EventSessionRespDto({required this.id, required this.name, required this.englishName, required this.title, required this.imageUrl, this.isNew = false, this.isHot = false, this.isSoldOut = false, this.ticketCount = 0});
  factory _EventSessionRespDto.fromJson(Map<String, dynamic> json) => _$EventSessionRespDtoFromJson(json);

@override final  int id;
@override final  String name;
@override final  String englishName;
@override final  String title;
@override final  String imageUrl;
@override@JsonKey() final  bool isNew;
@override@JsonKey() final  bool isHot;
@override@JsonKey() final  bool isSoldOut;
@override@JsonKey() final  int ticketCount;

/// Create a copy of EventSessionRespDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EventSessionRespDtoCopyWith<_EventSessionRespDto> get copyWith => __$EventSessionRespDtoCopyWithImpl<_EventSessionRespDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EventSessionRespDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EventSessionRespDto&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.englishName, englishName) || other.englishName == englishName)&&(identical(other.title, title) || other.title == title)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.isNew, isNew) || other.isNew == isNew)&&(identical(other.isHot, isHot) || other.isHot == isHot)&&(identical(other.isSoldOut, isSoldOut) || other.isSoldOut == isSoldOut)&&(identical(other.ticketCount, ticketCount) || other.ticketCount == ticketCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,englishName,title,imageUrl,isNew,isHot,isSoldOut,ticketCount);

@override
String toString() {
  return 'EventSessionRespDto(id: $id, name: $name, englishName: $englishName, title: $title, imageUrl: $imageUrl, isNew: $isNew, isHot: $isHot, isSoldOut: $isSoldOut, ticketCount: $ticketCount)';
}


}

/// @nodoc
abstract mixin class _$EventSessionRespDtoCopyWith<$Res> implements $EventSessionRespDtoCopyWith<$Res> {
  factory _$EventSessionRespDtoCopyWith(_EventSessionRespDto value, $Res Function(_EventSessionRespDto) _then) = __$EventSessionRespDtoCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String englishName, String title, String imageUrl, bool isNew, bool isHot, bool isSoldOut, int ticketCount
});




}
/// @nodoc
class __$EventSessionRespDtoCopyWithImpl<$Res>
    implements _$EventSessionRespDtoCopyWith<$Res> {
  __$EventSessionRespDtoCopyWithImpl(this._self, this._then);

  final _EventSessionRespDto _self;
  final $Res Function(_EventSessionRespDto) _then;

/// Create a copy of EventSessionRespDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? englishName = null,Object? title = null,Object? imageUrl = null,Object? isNew = null,Object? isHot = null,Object? isSoldOut = null,Object? ticketCount = null,}) {
  return _then(_EventSessionRespDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,englishName: null == englishName ? _self.englishName : englishName // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,isNew: null == isNew ? _self.isNew : isNew // ignore: cast_nullable_to_non_nullable
as bool,isHot: null == isHot ? _self.isHot : isHot // ignore: cast_nullable_to_non_nullable
as bool,isSoldOut: null == isSoldOut ? _self.isSoldOut : isSoldOut // ignore: cast_nullable_to_non_nullable
as bool,ticketCount: null == ticketCount ? _self.ticketCount : ticketCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
