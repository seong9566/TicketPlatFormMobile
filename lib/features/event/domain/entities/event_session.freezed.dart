// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event_session.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EventSession {

 int get id; String get name; String get englishName;// e.g., (IU) or (NewJeans)
 String get title;// e.g., 2024 월드 투어 서울
 String get imageUrl; bool get isNew; bool get isHot; bool get isSoldOut; int get ticketCount;
/// Create a copy of EventSession
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EventSessionCopyWith<EventSession> get copyWith => _$EventSessionCopyWithImpl<EventSession>(this as EventSession, _$identity);

  /// Serializes this EventSession to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EventSession&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.englishName, englishName) || other.englishName == englishName)&&(identical(other.title, title) || other.title == title)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.isNew, isNew) || other.isNew == isNew)&&(identical(other.isHot, isHot) || other.isHot == isHot)&&(identical(other.isSoldOut, isSoldOut) || other.isSoldOut == isSoldOut)&&(identical(other.ticketCount, ticketCount) || other.ticketCount == ticketCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,englishName,title,imageUrl,isNew,isHot,isSoldOut,ticketCount);

@override
String toString() {
  return 'EventSession(id: $id, name: $name, englishName: $englishName, title: $title, imageUrl: $imageUrl, isNew: $isNew, isHot: $isHot, isSoldOut: $isSoldOut, ticketCount: $ticketCount)';
}


}

/// @nodoc
abstract mixin class $EventSessionCopyWith<$Res>  {
  factory $EventSessionCopyWith(EventSession value, $Res Function(EventSession) _then) = _$EventSessionCopyWithImpl;
@useResult
$Res call({
 int id, String name, String englishName, String title, String imageUrl, bool isNew, bool isHot, bool isSoldOut, int ticketCount
});




}
/// @nodoc
class _$EventSessionCopyWithImpl<$Res>
    implements $EventSessionCopyWith<$Res> {
  _$EventSessionCopyWithImpl(this._self, this._then);

  final EventSession _self;
  final $Res Function(EventSession) _then;

/// Create a copy of EventSession
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


/// Adds pattern-matching-related methods to [EventSession].
extension EventSessionPatterns on EventSession {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EventSession value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EventSession() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EventSession value)  $default,){
final _that = this;
switch (_that) {
case _EventSession():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EventSession value)?  $default,){
final _that = this;
switch (_that) {
case _EventSession() when $default != null:
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
case _EventSession() when $default != null:
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
case _EventSession():
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
case _EventSession() when $default != null:
return $default(_that.id,_that.name,_that.englishName,_that.title,_that.imageUrl,_that.isNew,_that.isHot,_that.isSoldOut,_that.ticketCount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EventSession implements EventSession {
  const _EventSession({required this.id, required this.name, required this.englishName, required this.title, required this.imageUrl, this.isNew = false, this.isHot = false, this.isSoldOut = false, this.ticketCount = 0});
  factory _EventSession.fromJson(Map<String, dynamic> json) => _$EventSessionFromJson(json);

@override final  int id;
@override final  String name;
@override final  String englishName;
// e.g., (IU) or (NewJeans)
@override final  String title;
// e.g., 2024 월드 투어 서울
@override final  String imageUrl;
@override@JsonKey() final  bool isNew;
@override@JsonKey() final  bool isHot;
@override@JsonKey() final  bool isSoldOut;
@override@JsonKey() final  int ticketCount;

/// Create a copy of EventSession
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EventSessionCopyWith<_EventSession> get copyWith => __$EventSessionCopyWithImpl<_EventSession>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EventSessionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EventSession&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.englishName, englishName) || other.englishName == englishName)&&(identical(other.title, title) || other.title == title)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.isNew, isNew) || other.isNew == isNew)&&(identical(other.isHot, isHot) || other.isHot == isHot)&&(identical(other.isSoldOut, isSoldOut) || other.isSoldOut == isSoldOut)&&(identical(other.ticketCount, ticketCount) || other.ticketCount == ticketCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,englishName,title,imageUrl,isNew,isHot,isSoldOut,ticketCount);

@override
String toString() {
  return 'EventSession(id: $id, name: $name, englishName: $englishName, title: $title, imageUrl: $imageUrl, isNew: $isNew, isHot: $isHot, isSoldOut: $isSoldOut, ticketCount: $ticketCount)';
}


}

/// @nodoc
abstract mixin class _$EventSessionCopyWith<$Res> implements $EventSessionCopyWith<$Res> {
  factory _$EventSessionCopyWith(_EventSession value, $Res Function(_EventSession) _then) = __$EventSessionCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String englishName, String title, String imageUrl, bool isNew, bool isHot, bool isSoldOut, int ticketCount
});




}
/// @nodoc
class __$EventSessionCopyWithImpl<$Res>
    implements _$EventSessionCopyWith<$Res> {
  __$EventSessionCopyWithImpl(this._self, this._then);

  final _EventSession _self;
  final $Res Function(_EventSession) _then;

/// Create a copy of EventSession
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? englishName = null,Object? title = null,Object? imageUrl = null,Object? isNew = null,Object? isHot = null,Object? isSoldOut = null,Object? ticketCount = null,}) {
  return _then(_EventSession(
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
